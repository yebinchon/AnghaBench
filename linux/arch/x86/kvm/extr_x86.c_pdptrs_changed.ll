; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_pdptrs_changed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_pdptrs_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@VCPU_EXREG_PDPTR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdptrs_changed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @is_pae_paging(%struct.kvm_vcpu* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %78

25:                                               ; preds = %1
  %26 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i64*
  %31 = call i32 @test_bit(i32 %26, i64* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %78

34:                                               ; preds = %25
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %35)
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 4294967264
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %43)
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4294967264
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nuw i64 4, %18
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @PFERR_USER_MASK, align 4
  %58 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @kvm_read_nested_guest_page(%struct.kvm_vcpu* %52, i32 %53, i32* %20, i32 %54, i32 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %34
  br label %76

64:                                               ; preds = %34
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nuw i64 4, %18
  %72 = trunc i64 %71 to i32
  %73 = call i64 @memcmp(i32* %20, i32 %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %64, %63
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %33, %24
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_nested_guest_page(%struct.kvm_vcpu*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
