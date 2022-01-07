; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_paired_singles.c_kvmppc_inst_is_paired_single.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_paired_singles.c_kvmppc_inst_is_paired_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BOOK3S_HFLAG_PAIRED_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvmppc_inst_is_paired_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_inst_is_paired_single(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BOOK3S_HFLAG_PAIRED_SINGLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_op(i32 %15)
  switch i32 %16, label %54 [
    i32 135, label %17
    i32 134, label %17
    i32 133, label %17
    i32 132, label %17
    i32 137, label %17
    i32 136, label %17
    i32 139, label %17
    i32 138, label %17
    i32 129, label %17
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 4, label %18
    i32 59, label %31
    i32 63, label %40
    i32 31, label %49
  ]

17:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  store i32 1, i32* %3, align 4
  br label %55

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @inst_get_field(i32 %19, i32 21, i32 30)
  switch i32 %20, label %22 [
    i32 183, label %21
    i32 187, label %21
    i32 185, label %21
    i32 188, label %21
    i32 175, label %21
    i32 182, label %21
    i32 177, label %21
    i32 184, label %21
    i32 176, label %21
    i32 186, label %21
    i32 181, label %21
    i32 180, label %21
    i32 179, label %21
    i32 178, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  store i32 1, i32* %3, align 4
  br label %55

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @inst_get_field(i32 %23, i32 25, i32 30)
  switch i32 %24, label %26 [
    i32 189, label %25
    i32 190, label %25
  ]

25:                                               ; preds = %22, %22
  store i32 1, i32* %3, align 4
  br label %55

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @inst_get_field(i32 %27, i32 26, i32 30)
  switch i32 %28, label %30 [
    i32 191, label %29
    i32 192, label %29
    i32 200, label %29
    i32 199, label %29
    i32 204, label %29
    i32 203, label %29
    i32 206, label %29
    i32 193, label %29
    i32 207, label %29
    i32 194, label %29
    i32 196, label %29
    i32 201, label %29
    i32 195, label %29
    i32 202, label %29
    i32 205, label %29
    i32 197, label %29
    i32 198, label %29
  ]

29:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  store i32 1, i32* %3, align 4
  br label %55

30:                                               ; preds = %26
  br label %54

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @inst_get_field(i32 %32, i32 21, i32 30)
  switch i32 %33, label %35 [
    i32 174, label %34
    i32 165, label %34
    i32 173, label %34
    i32 167, label %34
    i32 166, label %34
  ]

34:                                               ; preds = %31, %31, %31, %31, %31
  store i32 1, i32* %3, align 4
  br label %55

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @inst_get_field(i32 %36, i32 26, i32 30)
  switch i32 %37, label %39 [
    i32 170, label %38
    i32 171, label %38
    i32 172, label %38
    i32 168, label %38
    i32 169, label %38
  ]

38:                                               ; preds = %35, %35, %35, %35, %35
  store i32 1, i32* %3, align 4
  br label %55

39:                                               ; preds = %35
  br label %54

40:                                               ; preds = %14
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @inst_get_field(i32 %41, i32 21, i32 30)
  switch i32 %42, label %44 [
    i32 143, label %43
    i32 142, label %43
    i32 141, label %43
    i32 140, label %43
    i32 145, label %43
    i32 144, label %43
    i32 161, label %43
    i32 162, label %43
    i32 152, label %43
    i32 155, label %43
    i32 164, label %43
    i32 149, label %43
    i32 157, label %43
    i32 163, label %43
    i32 146, label %43
    i32 159, label %43
    i32 158, label %43
    i32 148, label %43
    i32 160, label %43
  ]

43:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  store i32 1, i32* %3, align 4
  br label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @inst_get_field(i32 %45, i32 26, i32 30)
  switch i32 %46, label %48 [
    i32 153, label %47
    i32 147, label %47
    i32 154, label %47
    i32 156, label %47
    i32 150, label %47
    i32 151, label %47
  ]

47:                                               ; preds = %44, %44, %44, %44, %44, %44
  store i32 1, i32* %3, align 4
  br label %55

48:                                               ; preds = %44
  br label %54

49:                                               ; preds = %14
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @inst_get_field(i32 %50, i32 21, i32 30)
  switch i32 %51, label %53 [
    i32 213, label %52
    i32 214, label %52
    i32 215, label %52
    i32 216, label %52
    i32 210, label %52
    i32 211, label %52
    i32 208, label %52
    i32 209, label %52
    i32 212, label %52
  ]

52:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49
  store i32 1, i32* %3, align 4
  br label %55

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %14, %53, %48, %39, %30
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %47, %43, %38, %34, %29, %25, %21, %17, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @inst_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
