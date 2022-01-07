; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_unshadow_scb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_unshadow_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FPF_BPBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vsie_page*)* @unshadow_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unshadow_scb(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vsie_page*, align 8
  %5 = alloca %struct.kvm_s390_sie_block*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %4, align 8
  %7 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %8 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %7, i32 0, i32 1
  store %struct.kvm_s390_sie_block* %8, %struct.kvm_s390_sie_block** %5, align 8
  %9 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %10 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %9, i32 0, i32 0
  %11 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %10, align 8
  store %struct.kvm_s390_sie_block* %11, %struct.kvm_s390_sie_block** %6, align 8
  %12 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 8
  %22 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  %32 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %66 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @memcpy(i8* %69, i8* %72, i32 128)
  %74 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %78 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @test_kvm_facility(i32 %81, i32 82)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %2
  %85 = load i32, i32* @FPF_BPBC, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %92 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FPF_BPBC, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %97 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %84, %2
  %101 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %102 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %128 [
    i32 128, label %104
    i32 130, label %104
    i32 131, label %104
    i32 129, label %116
  ]

104:                                              ; preds = %100, %100, %100
  %105 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %106 = ptrtoint %struct.kvm_s390_sie_block* %105 to i32
  %107 = add nsw i32 %106, 192
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %111 = ptrtoint %struct.kvm_s390_sie_block* %110 to i32
  %112 = add nsw i32 %111, 192
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @memcpy(i8* %109, i8* %114, i32 48)
  br label %128

116:                                              ; preds = %100
  %117 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %118 = ptrtoint %struct.kvm_s390_sie_block* %117 to i32
  %119 = add nsw i32 %118, 192
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %123 = ptrtoint %struct.kvm_s390_sie_block* %122 to i32
  %124 = add nsw i32 %123, 192
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @memcpy(i8* %121, i8* %126, i32 16)
  br label %128

128:                                              ; preds = %100, %116, %104
  %129 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %130 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 65535
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %135 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %138 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %128
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
