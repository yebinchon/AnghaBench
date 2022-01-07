; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c__copy_key_to_kb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c__copy_key_to_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_blob = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_blob*, i32*, i32)* @_copy_key_to_kb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_copy_key_to_kb(%struct.key_blob* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key_blob*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.key_blob* %0, %struct.key_blob** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ule i64 %9, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %13 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %16 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kmalloc(i32 %18, i32 %19)
  %21 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %22 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %24 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %33 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.key_blob*, %struct.key_blob** %5, align 8
  %40 = getelementptr inbounds %struct.key_blob, %struct.key_blob* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
