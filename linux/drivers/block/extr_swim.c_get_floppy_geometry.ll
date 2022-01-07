; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_get_floppy_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_get_floppy_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_struct = type { i32 }
%struct.floppy_state = type { i64, i32 }

@floppy_type = common dso_local global %struct.floppy_struct* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@HD_MEDIA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.floppy_state*, i32, %struct.floppy_struct**)* @get_floppy_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_floppy_geometry(%struct.floppy_state* %0, i32 %1, %struct.floppy_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.floppy_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.floppy_struct**, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.floppy_struct** %2, %struct.floppy_struct*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.floppy_struct* %9)
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %19, i64 %21
  %23 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %22, %struct.floppy_struct** %23, align 8
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %26 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HD_MEDIA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %32 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %31, i64 3
  %33 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %32, %struct.floppy_struct** %33, align 8
  br label %48

34:                                               ; preds = %24
  %35 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %36 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %41 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %40, i64 2
  %42 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %41, %struct.floppy_struct** %42, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %45 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %44, i64 1
  %46 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %45, %struct.floppy_struct** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %18
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ARRAY_SIZE(%struct.floppy_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
