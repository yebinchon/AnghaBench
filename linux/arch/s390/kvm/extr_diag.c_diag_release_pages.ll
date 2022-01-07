; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c_diag_release_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c_diag_release_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"diag release pages %lX %lX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @diag_release_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diag_release_pages(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i64 @kvm_s390_get_prefix(%struct.kvm_vcpu* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 240
  %23 = ashr i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %15, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %33, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  store i64 %46, i64* %5, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %1
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = mul nsw i32 2, %69
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %63, %57, %1
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = load i32, i32* @PGM_SPECIFICATION, align 4
  %76 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %74, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %151

77:                                               ; preds = %67
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %78, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %79, i64 %80)
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ule i64 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = add i64 %87, %90
  %92 = icmp uge i64 %86, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %85, %77
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @gmap_discard(i32 %97, i64 %98, i64 %99)
  br label %150

101:                                              ; preds = %85
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @gmap_discard(i32 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp ule i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 @gmap_discard(i32 %116, i64 0, i64 %118)
  br label %120

120:                                              ; preds = %112, %101
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = icmp ugt i64 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = mul nsw i32 2, %134
  %136 = sext i32 %135 to i64
  %137 = call i32 @gmap_discard(i32 %131, i64 %133, i64 %136)
  br label %138

138:                                              ; preds = %127, %120
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i32, i32* @PAGE_SIZE, align 4
  %145 = mul nsw i32 2, %144
  %146 = sext i32 %145 to i64
  %147 = add i64 %143, %146
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @gmap_discard(i32 %142, i64 %147, i64 %148)
  br label %150

150:                                              ; preds = %138, %93
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %73
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @kvm_s390_get_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i64, i64) #1

declare dso_local i32 @gmap_discard(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
