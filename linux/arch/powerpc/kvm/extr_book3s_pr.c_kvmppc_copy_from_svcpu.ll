; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_copy_from_svcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_copy_from_svcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32* }
%struct.kvmppc_book3s_shadow_vcpu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_IC = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_TS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_copy_from_svcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %4)
  store %struct.kvmppc_book3s_shadow_vcpu* %5, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %6 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %285

11:                                               ; preds = %1
  %12 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %12, i32 0, i32 11
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %23, i32 0, i32 11
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 11
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %27, i32* %33, align 4
  %34 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %34, i32 0, i32 11
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %38, i32* %44, align 4
  %45 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %45, i32 0, i32 11
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %49, i32* %55, align 4
  %56 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %56, i32 0, i32 11
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %60, i32* %66, align 4
  %67 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %67, i32 0, i32 11
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 11
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %71, i32* %77, align 4
  %78 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %78, i32 0, i32 11
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 %82, i32* %88, align 4
  %89 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %90 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %89, i32 0, i32 11
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %93, i32* %99, align 4
  %100 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %101 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 11
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  store i32 %104, i32* %110, align 4
  %111 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %112 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %111, i32 0, i32 11
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 9
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 9
  store i32 %115, i32* %121, align 4
  %122 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %123 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %122, i32 0, i32 11
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 10
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 11
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 10
  store i32 %126, i32* %132, align 4
  %133 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %133, i32 0, i32 11
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 11
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 11
  store i32 %137, i32* %143, align 4
  %144 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %145 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %144, i32 0, i32 11
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 12
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 12
  store i32 %148, i32* %154, align 4
  %155 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %156 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %155, i32 0, i32 11
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 13
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 13
  store i32 %159, i32* %165, align 4
  %166 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %167 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 11
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  store i32 %168, i32* %172, align 8
  %173 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %174 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 11
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %181 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %184 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  %187 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %188 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %191 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 11
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 11
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 8
  %201 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %202 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %205 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %208 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 10
  store i32 %209, i32* %212, align 4
  %213 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %217 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 9
  store i32 %215, i32* %218, align 8
  %219 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %220 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %223 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 8
  store i32 %221, i32* %224, align 4
  %225 = call i64 (...) @get_tb()
  %226 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %227 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %225, %229
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %230
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 4
  %238 = call i64 (...) @get_tb()
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %240 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %238, %242
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %245 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %243
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 8
  %251 = call i64 (...) @get_vtb()
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %253 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %251, %255
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %258 = call %struct.TYPE_6__* @to_book3s(%struct.kvm_vcpu* %257)
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %256
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %259, align 4
  %264 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %265 = call i64 @cpu_has_feature(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %11
  %268 = load i32, i32* @SPRN_IC, align 4
  %269 = call i64 @mfspr(i32 %268)
  %270 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %271 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %269, %273
  %275 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %276 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %274
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 8
  br label %282

282:                                              ; preds = %267, %11
  %283 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %284 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %283, i32 0, i32 0
  store i32 0, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %10
  %286 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %287 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %286)
  ret void
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i64 @get_vtb(...) #1

declare dso_local %struct.TYPE_6__* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
