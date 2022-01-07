; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_check_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_check_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s (stack underflow)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s (%s type found instead of 0x%x type))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.forth_stack*, i32, i8*)* @check_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_type(%struct.forth_stack* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.forth_stack* %0, %struct.forth_stack** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %9 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %14 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %20 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %23 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %18
  %32 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %33 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %37 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %40 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @type_to_string(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %49

48:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %31, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i8* @type_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
