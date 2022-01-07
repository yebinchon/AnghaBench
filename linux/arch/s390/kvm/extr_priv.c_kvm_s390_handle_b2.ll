; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_b2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_b2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_b2(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 255
  switch i32 %10, label %62 [
    i32 2, label %11
    i32 4, label %14
    i32 16, label %17
    i32 17, label %20
    i32 18, label %23
    i32 20, label %26
    i32 33, label %29
    i32 80, label %29
    i32 41, label %32
    i32 42, label %35
    i32 43, label %38
    i32 44, label %41
    i32 48, label %44
    i32 49, label %44
    i32 50, label %44
    i32 51, label %44
    i32 52, label %44
    i32 53, label %44
    i32 54, label %44
    i32 55, label %44
    i32 56, label %44
    i32 57, label %44
    i32 58, label %44
    i32 59, label %44
    i32 60, label %44
    i32 95, label %44
    i32 116, label %44
    i32 118, label %44
    i32 86, label %47
    i32 125, label %50
    i32 175, label %53
    i32 177, label %56
    i32 178, label %59
  ]

11:                                               ; preds = %1
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @handle_stidp(%struct.kvm_vcpu* %12)
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i32 @handle_set_clock(%struct.kvm_vcpu* %15)
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = call i32 @handle_set_prefix(%struct.kvm_vcpu* %18)
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @handle_store_prefix(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %1
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i32 @handle_store_cpu_address(%struct.kvm_vcpu* %24)
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = call i32 @kvm_s390_handle_vsie(%struct.kvm_vcpu* %27)
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %1, %1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @handle_ipte_interlock(%struct.kvm_vcpu* %30)
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %1
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i32 @handle_iske(%struct.kvm_vcpu* %33)
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %1
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = call i32 @handle_rrbe(%struct.kvm_vcpu* %36)
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %1
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 @handle_sske(%struct.kvm_vcpu* %39)
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %1
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i32 @handle_test_block(%struct.kvm_vcpu* %42)
  store i32 %43, i32* %2, align 4
  br label %65

44:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @handle_io_inst(%struct.kvm_vcpu* %45)
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %1
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @handle_sthyi(%struct.kvm_vcpu* %48)
  store i32 %49, i32* %2, align 4
  br label %65

50:                                               ; preds = %1
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @handle_stsi(%struct.kvm_vcpu* %51)
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %1
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @handle_pqap(%struct.kvm_vcpu* %54)
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %1
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = call i32 @handle_stfl(%struct.kvm_vcpu* %57)
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %1
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = call i32 @handle_lpswe(%struct.kvm_vcpu* %60)
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %1
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @handle_stidp(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_set_clock(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_set_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_store_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_store_cpu_address(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_vsie(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_ipte_interlock(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_iske(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_rrbe(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_sske(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_test_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_io_inst(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_sthyi(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_stsi(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_pqap(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_stfl(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_lpswe(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
