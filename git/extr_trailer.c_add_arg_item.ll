; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_add_arg_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_add_arg_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.conf_info = type { i32 }
%struct.new_trailer_item = type { i64, i64, i64 }
%struct.arg_item = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@WHERE_DEFAULT = common dso_local global i64 0, align 8
@EXISTS_DEFAULT = common dso_local global i64 0, align 8
@MISSING_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, i8*, i8*, %struct.conf_info*, %struct.new_trailer_item*)* @add_arg_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_arg_item(%struct.list_head* %0, i8* %1, i8* %2, %struct.conf_info* %3, %struct.new_trailer_item* %4) #0 {
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.conf_info*, align 8
  %10 = alloca %struct.new_trailer_item*, align 8
  %11 = alloca %struct.arg_item*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.conf_info* %3, %struct.conf_info** %9, align 8
  store %struct.new_trailer_item* %4, %struct.new_trailer_item** %10, align 8
  %12 = call %struct.arg_item* @xcalloc(i32 48, i32 1)
  store %struct.arg_item* %12, %struct.arg_item** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %15 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %18 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %20 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %19, i32 0, i32 3
  %21 = load %struct.conf_info*, %struct.conf_info** %9, align 8
  %22 = call i32 @duplicate_conf(%struct.TYPE_2__* %20, %struct.conf_info* %21)
  %23 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %24 = icmp ne %struct.new_trailer_item* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %5
  %26 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %27 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WHERE_DEFAULT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %33 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %36 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %40 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXISTS_DEFAULT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %46 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %49 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %53 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MISSING_DEFAULT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.new_trailer_item*, %struct.new_trailer_item** %10, align 8
  %59 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %62 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %5
  %66 = load %struct.arg_item*, %struct.arg_item** %11, align 8
  %67 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %66, i32 0, i32 2
  %68 = load %struct.list_head*, %struct.list_head** %6, align 8
  %69 = call i32 @list_add_tail(i32* %67, %struct.list_head* %68)
  ret void
}

declare dso_local %struct.arg_item* @xcalloc(i32, i32) #1

declare dso_local i32 @duplicate_conf(%struct.TYPE_2__*, %struct.conf_info*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
