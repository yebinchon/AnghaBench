; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ima_kexec.c_ima_free_kexec_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ima_kexec.c_ima_free_kexec_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, i32 }

@of_chosen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"linux,ima-kexec-buffer\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_free_kexec_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.property*, align 8
  %6 = load i32, i32* @of_chosen, align 4
  %7 = call %struct.property* @of_find_property(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %7, %struct.property** %5, align 8
  %8 = load %struct.property*, %struct.property** %5, align 8
  %9 = icmp ne %struct.property* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %37

13:                                               ; preds = %0
  %14 = load %struct.property*, %struct.property** %5, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.property*, %struct.property** %5, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @do_get_kexec_buffer(i32 %16, i32 %19, i64* %3, i64* %4)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %37

25:                                               ; preds = %13
  %26 = load i32, i32* @of_chosen, align 4
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = call i32 @of_remove_property(i32 %26, %struct.property* %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @memblock_free(i64 %34, i64 %35)
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %33, %31, %23, %10
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.property* @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @do_get_kexec_buffer(i32, i32, i64*, i64*) #1

declare dso_local i32 @of_remove_property(i32, %struct.property*) #1

declare dso_local i32 @memblock_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
