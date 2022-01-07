; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_copy_to_svcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_copy_to_svcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32* }
%struct.kvmppc_book3s_shadow_vcpu = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_IC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_copy_to_svcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %4)
  store %struct.kvmppc_book3s_shadow_vcpu* %5, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %34, i32* %38, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %45, i32* %49, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %56, i32* %60, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %67, i32* %71, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  store i32 %78, i32* %82, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  store i32 %89, i32* %93, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32 %100, i32* %104, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %113 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  store i32 %111, i32* %115, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 10
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %124 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 10
  store i32 %122, i32* %126, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 11
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %135 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 11
  store i32 %133, i32* %137, align 4
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %146 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 12
  store i32 %144, i32* %148, align 4
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 13
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %157 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 13
  store i32 %155, i32* %159, align 4
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %166 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %173 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %180 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %182 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %187 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %194 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = call i32 (...) @get_tb()
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %197 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 8
  %199 = call i32 (...) @get_vtb()
  %200 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %204 = call i64 @cpu_has_feature(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %1
  %207 = load i32, i32* @SPRN_IC, align 4
  %208 = call i32 @mfspr(i32 %207)
  %209 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %210 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  br label %212

212:                                              ; preds = %206, %1
  %213 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %3, align 8
  %216 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %215)
  ret void
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @get_vtb(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
