; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_per_fetched_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_per_fetched_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@ICPT_PROGI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64*)* @per_fetched_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @per_fetched_addr(%struct.kvm_vcpu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICPT_PROGI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = bitcast [3 x i32]* %7 to i32**
  %33 = call i32 @read_guest_instr(%struct.kvm_vcpu* %29, i64 %31, i32** %32, i32 2)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %174

38:                                               ; preds = %21
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = icmp eq i32 %41, 68
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 4, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65295
  %48 = icmp eq i32 %47, 50688
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 6, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %44
  br label %84

51:                                               ; preds = %2
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = call i32 @kvm_s390_get_ilen(%struct.kvm_vcpu* %58)
  %60 = call i64 @__rewind_psw(i32 %57, i32 %59)
  %61 = load i64*, i64** %5, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %51
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 96
  %78 = ashr i32 %77, 4
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  store i32 4, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %173

87:                                               ; preds = %84
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = load i64*, i64** %5, align 8
  %90 = load i64, i64* %89, align 8
  %91 = bitcast [3 x i32]* %7 to i32**
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @read_guest_instr(%struct.kvm_vcpu* %88, i64 %90, i32** %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %174

98:                                               ; preds = %87
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = bitcast i32* %103 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  %108 = mul nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = load i64*, i64** %5, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, i64* %110, align 8
  br label %167

113:                                              ; preds = %98
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 61440
  %117 = ashr i32 %116, 12
  store i32 %117, i32* %10, align 4
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 4095
  store i32 %120, i32* %11, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 15
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %113
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  br label %139

138:                                              ; preds = %113
  br label %139

139:                                              ; preds = %138, %126
  %140 = phi i64 [ %137, %126 ], [ 0, %138 ]
  %141 = load i64*, i64** %5, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  br label %157

156:                                              ; preds = %139
  br label %157

157:                                              ; preds = %156, %144
  %158 = phi i64 [ %155, %144 ], [ 0, %156 ]
  %159 = load i64*, i64** %5, align 8
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %158
  store i64 %161, i64* %159, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** %5, align 8
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %163
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %157, %101
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %169 = load i64*, i64** %5, align 8
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %168, i64 %170)
  %172 = load i64*, i64** %5, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %167, %84
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %96, %36
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @read_guest_instr(%struct.kvm_vcpu*, i64, i32**, i32) #1

declare dso_local i64 @__rewind_psw(i32, i32) #1

declare dso_local i32 @kvm_s390_get_ilen(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
