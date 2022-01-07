; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_apply_item_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_apply_item_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trailer_item = type { i8* }
%struct.arg_item = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trailer_item*, %struct.arg_item*)* @apply_item_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_item_command(%struct.trailer_item* %0, %struct.arg_item* %1) #0 {
  %3 = alloca %struct.trailer_item*, align 8
  %4 = alloca %struct.arg_item*, align 8
  %5 = alloca i8*, align 8
  store %struct.trailer_item* %0, %struct.trailer_item** %3, align 8
  store %struct.arg_item* %1, %struct.arg_item** %4, align 8
  %6 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %7 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %13 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %18 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %26 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  br label %44

28:                                               ; preds = %16, %11
  %29 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  %30 = icmp ne %struct.trailer_item* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  %33 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  %38 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @xstrdup(i8* %39)
  store i8* %40, i8** %5, align 8
  br label %43

41:                                               ; preds = %31, %28
  %42 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %46 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @apply_command(i64 %48, i8* %49)
  %51 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %52 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %44, %2
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @apply_command(i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
