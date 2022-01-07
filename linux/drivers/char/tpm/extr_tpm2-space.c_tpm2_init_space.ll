; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_init_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_init_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_space = type { i8*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_init_space(%struct.tpm_space* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_space*, align 8
  store %struct.tpm_space* %0, %struct.tpm_space** %3, align 8
  %4 = load i32, i32* @PAGE_SIZE, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 %4, i32 %5)
  %7 = load %struct.tpm_space*, %struct.tpm_space** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load %struct.tpm_space*, %struct.tpm_space** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.tpm_space*, %struct.tpm_space** %3, align 8
  %22 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.tpm_space*, %struct.tpm_space** %3, align 8
  %24 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.tpm_space*, %struct.tpm_space** %3, align 8
  %29 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
