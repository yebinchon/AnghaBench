; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_append_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_append_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_output = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_output*, i8*)* @append_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_str(%struct.forth_output* %0, i8* %1) #0 {
  %3 = alloca %struct.forth_output*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.forth_output* %0, %struct.forth_output** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.forth_output*, %struct.forth_output** %3, align 8
  %8 = icmp eq %struct.forth_output* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.forth_output*, %struct.forth_output** %3, align 8
  %12 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = sub i64 8, %14
  %16 = sub i64 %15, 2
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %46

21:                                               ; preds = %10
  %22 = load %struct.forth_output*, %struct.forth_output** %3, align 8
  %23 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.forth_output*, %struct.forth_output** %3, align 8
  %26 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @snprintf(i64 %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %21
  br label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.forth_output*, %struct.forth_output** %3, align 8
  %43 = getelementptr inbounds %struct.forth_output, %struct.forth_output* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %39, %20, %9
  ret void
}

declare dso_local i32 @snprintf(i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
