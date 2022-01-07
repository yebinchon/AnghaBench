; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_multiple_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_multiple_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@DF_VECTOR = common dso_local global i64 0, align 8
@KVM_REQ_TRIPLE_FAULT = common dso_local global i32 0, align 4
@EXCPT_CONTRIBUTORY = common dso_local global i32 0, align 4
@EXCPT_PF = common dso_local global i32 0, align 4
@EXCPT_BENIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64, i32, i64, i32)* @kvm_multiple_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_multiple_exception(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* @KVM_REQ_EVENT, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %20 = call i32 @kvm_make_request(i32 %18, %struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %112, label %27

27:                                               ; preds = %7
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %112, label %34

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %178, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %40 = call i32 @is_protmode(%struct.kvm_vcpu* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %38, %35
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @WARN_ON_ONCE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %60, %46
  br label %71

62:                                               ; preds = %43
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %61
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 6
  store i64 %82, i64* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i64 %92, i64* %96, align 8
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %71
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %106 = call i32 @is_guest_mode(%struct.kvm_vcpu* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104, %71
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %110 = call i32 @kvm_deliver_exception_payload(%struct.kvm_vcpu* %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %179

112:                                              ; preds = %27, %7
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @DF_VECTOR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @KVM_REQ_TRIPLE_FAULT, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %125 = call i32 @kvm_make_request(i32 %123, %struct.kvm_vcpu* %124)
  br label %179

126:                                              ; preds = %112
  %127 = load i64, i64* %15, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @exception_class(i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @exception_class(i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @EXCPT_CONTRIBUTORY, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @EXCPT_CONTRIBUTORY, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %135, %126
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @EXCPT_PF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @EXCPT_BENIGN, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %143, %135
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %149 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %153 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %157 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load i64, i64* @DF_VECTOR, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  store i32 %161, i32* %165, align 4
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  store i64 0, i64* %169, align 8
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %171 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  store i32 0, i32* %173, align 8
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  br label %179

178:                                              ; preds = %143, %139
  br label %35

179:                                              ; preds = %111, %122, %147
  ret void
}

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @is_protmode(%struct.kvm_vcpu*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_deliver_exception_payload(%struct.kvm_vcpu*) #1

declare dso_local i32 @exception_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
