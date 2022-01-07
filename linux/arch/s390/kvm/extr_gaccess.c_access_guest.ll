; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_access_guest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_access_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.asce = type { i32 }
%struct.TYPE_6__ = type { i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GACC_STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @access_guest(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i64], align 16
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %union.asce, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* %29, i32** %14, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %179

33:                                               ; preds = %6
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %34, i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @get_vcpu_asce(%struct.kvm_vcpu* %37, %union.asce* %22, i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %23, align 4
  store i32 %45, i32* %7, align 4
  br label %179

46:                                               ; preds = %33
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @PAGE_MASK, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  %53 = sub i64 %52, 1
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = add i64 %55, 1
  store i64 %56, i64* %16, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  store i64* %57, i64** %20, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %60 = call i64 @ARRAY_SIZE(i64* %59)
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @array_size(i64 %63, i32 8)
  %65 = call i64* @vmalloc(i32 %64)
  store i64* %65, i64** %20, align 8
  br label %66

66:                                               ; preds = %62, %46
  %67 = load i64*, i64** %20, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %179

72:                                               ; preds = %66
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @psw_bits(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = bitcast %union.asce* %22 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %80, %72
  %86 = phi i1 [ false, %72 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %92 = call i32 @ipte_lock(%struct.kvm_vcpu* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i64*, i64** %20, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds %union.asce, %union.asce* %22, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @guest_page_range(%struct.kvm_vcpu* %94, i64 %95, i32 %96, i64* %97, i64 %98, i32 %101, i32 %99)
  store i32 %102, i32* %23, align 4
  store i64 0, i64* %18, align 8
  br label %103

103:                                              ; preds = %160, %93
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %16, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %163

113:                                              ; preds = %111
  %114 = load i64*, i64** %20, align 8
  %115 = load i64, i64* %18, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @PAGE_MASK, align 8
  %120 = xor i64 %119, -1
  %121 = and i64 %118, %120
  %122 = add i64 %117, %121
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* @PAGE_MASK, align 8
  %126 = xor i64 %125, -1
  %127 = and i64 %124, %126
  %128 = sub i64 %123, %127
  %129 = load i64, i64* %12, align 8
  %130 = call i64 @min(i64 %128, i64 %129)
  store i64 %130, i64* %15, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @GACC_STORE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %113
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @kvm_write_guest(i32 %137, i64 %138, i8* %139, i64 %140)
  store i32 %141, i32* %23, align 4
  br label %150

142:                                              ; preds = %113
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %17, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @kvm_read_guest(i32 %145, i64 %146, i8* %147, i64 %148)
  store i32 %149, i32* %23, align 4
  br label %150

150:                                              ; preds = %142, %134
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %12, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr i8, i8* %158, i64 %157
  store i8* %159, i8** %11, align 8
  br label %160

160:                                              ; preds = %150
  %161 = load i64, i64* %18, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %18, align 8
  br label %103

163:                                              ; preds = %111
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %168 = call i32 @ipte_unlock(%struct.kvm_vcpu* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %172 = call i64 @ARRAY_SIZE(i64* %171)
  %173 = icmp ugt i64 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i64*, i64** %20, align 8
  %176 = call i32 @vfree(i64* %175)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32, i32* %23, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %177, %69, %44, %32
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @get_vcpu_asce(%struct.kvm_vcpu*, %union.asce*, i64, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64* @vmalloc(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i64 @psw_bits(i32) #1

declare dso_local i32 @ipte_lock(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_page_range(%struct.kvm_vcpu*, i64, i32, i64*, i64, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @kvm_write_guest(i32, i64, i8*, i64) #1

declare dso_local i32 @kvm_read_guest(i32, i64, i8*, i64) #1

declare dso_local i32 @ipte_unlock(%struct.kvm_vcpu*) #1

declare dso_local i32 @vfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
