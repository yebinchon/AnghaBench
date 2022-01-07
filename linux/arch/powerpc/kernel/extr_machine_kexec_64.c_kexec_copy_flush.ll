; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_64.c_kexec_copy_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_64.c_kexec_copy_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32, i32 }
%struct.kexec_segment = type { i64, i64 }

@KEXEC_SEGMENT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kexec_copy_flush(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %7 = load %struct.kimage*, %struct.kimage** %2, align 8
  %8 = getelementptr inbounds %struct.kimage, %struct.kimage* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @KEXEC_SEGMENT_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.kexec_segment, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nuw i64 16, %11
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memcpy(%struct.kexec_segment* %13, i32 %16, i32 %18)
  %20 = load %struct.kimage*, %struct.kimage** %2, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @copy_segments(i32 %22)
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %45, %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %13, i64 %29
  %31 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @__va(i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %13, i64 %34
  %36 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %13, i64 %38
  %40 = getelementptr inbounds %struct.kexec_segment, %struct.kexec_segment* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 16
  %42 = add nsw i64 %37, %41
  %43 = call i64 @__va(i64 %42)
  %44 = call i32 @flush_icache_range(i64 %33, i64 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %24

48:                                               ; preds = %24
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.kexec_segment*, i32, i32) #2

declare dso_local i32 @copy_segments(i32) #2

declare dso_local i32 @flush_icache_range(i64, i64) #2

declare dso_local i64 @__va(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
