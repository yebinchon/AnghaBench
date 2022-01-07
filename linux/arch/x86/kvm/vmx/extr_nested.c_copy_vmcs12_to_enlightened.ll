; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs12_to_enlightened.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs12_to_enlightened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hv_enlightened_vmcs*, %struct.vmcs12* }
%struct.hv_enlightened_vmcs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*)* @copy_vmcs12_to_enlightened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_vmcs12_to_enlightened(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca %struct.vmcs12*, align 8
  %4 = alloca %struct.hv_enlightened_vmcs*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.vmcs12*, %struct.vmcs12** %7, align 8
  store %struct.vmcs12* %8, %struct.vmcs12** %3, align 8
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %11, align 8
  store %struct.hv_enlightened_vmcs* %12, %struct.hv_enlightened_vmcs** %4, align 8
  %13 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %14 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %13, i32 0, i32 71
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %17 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %16, i32 0, i32 71
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %19 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %18, i32 0, i32 70
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %22 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %21, i32 0, i32 70
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %24 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %23, i32 0, i32 69
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %27 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %26, i32 0, i32 69
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %29 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %28, i32 0, i32 68
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %32 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %31, i32 0, i32 68
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %34 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %33, i32 0, i32 67
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %37 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %36, i32 0, i32 67
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %39 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %38, i32 0, i32 66
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %42 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %41, i32 0, i32 66
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %44 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %43, i32 0, i32 65
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %47 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %46, i32 0, i32 65
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %49 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %48, i32 0, i32 64
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %52 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %51, i32 0, i32 64
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %54 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %53, i32 0, i32 63
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %57 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %56, i32 0, i32 63
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %59 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %58, i32 0, i32 62
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %62 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %61, i32 0, i32 62
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %64 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %63, i32 0, i32 61
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %67 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %66, i32 0, i32 61
  store i32 %65, i32* %67, align 4
  %68 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %69 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %68, i32 0, i32 60
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %72 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %71, i32 0, i32 60
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %74 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %73, i32 0, i32 59
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %77 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %76, i32 0, i32 59
  store i32 %75, i32* %77, align 4
  %78 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %79 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %78, i32 0, i32 58
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %82 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %81, i32 0, i32 58
  store i32 %80, i32* %82, align 4
  %83 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %84 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %83, i32 0, i32 57
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %87 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %86, i32 0, i32 57
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %89 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %88, i32 0, i32 56
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %92 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %91, i32 0, i32 56
  store i32 %90, i32* %92, align 4
  %93 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %94 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %93, i32 0, i32 55
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %97 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %96, i32 0, i32 55
  store i32 %95, i32* %97, align 4
  %98 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %99 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %98, i32 0, i32 54
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %102 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %101, i32 0, i32 54
  store i32 %100, i32* %102, align 4
  %103 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %104 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %103, i32 0, i32 53
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %107 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %106, i32 0, i32 53
  store i32 %105, i32* %107, align 4
  %108 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %109 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %108, i32 0, i32 52
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %112 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %111, i32 0, i32 52
  store i32 %110, i32* %112, align 4
  %113 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %114 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %113, i32 0, i32 51
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %117 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %116, i32 0, i32 51
  store i32 %115, i32* %117, align 4
  %118 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %119 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %118, i32 0, i32 50
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %122 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %121, i32 0, i32 50
  store i32 %120, i32* %122, align 4
  %123 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %124 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %123, i32 0, i32 49
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %127 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %126, i32 0, i32 49
  store i32 %125, i32* %127, align 4
  %128 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %129 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %128, i32 0, i32 48
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %132 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %131, i32 0, i32 48
  store i32 %130, i32* %132, align 4
  %133 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %134 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %133, i32 0, i32 47
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %137 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %136, i32 0, i32 47
  store i32 %135, i32* %137, align 4
  %138 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %139 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %138, i32 0, i32 46
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %142 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %141, i32 0, i32 46
  store i32 %140, i32* %142, align 4
  %143 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %144 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %143, i32 0, i32 45
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %147 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %146, i32 0, i32 45
  store i32 %145, i32* %147, align 4
  %148 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %149 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %148, i32 0, i32 44
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %152 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %151, i32 0, i32 44
  store i32 %150, i32* %152, align 4
  %153 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %154 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %153, i32 0, i32 43
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %157 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %156, i32 0, i32 43
  store i32 %155, i32* %157, align 4
  %158 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %159 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %158, i32 0, i32 42
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %162 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %161, i32 0, i32 42
  store i32 %160, i32* %162, align 4
  %163 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %164 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %163, i32 0, i32 41
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %167 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %166, i32 0, i32 41
  store i32 %165, i32* %167, align 4
  %168 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %169 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %168, i32 0, i32 40
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %172 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %171, i32 0, i32 40
  store i32 %170, i32* %172, align 4
  %173 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %174 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %173, i32 0, i32 39
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %177 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %176, i32 0, i32 39
  store i32 %175, i32* %177, align 4
  %178 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %179 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %178, i32 0, i32 38
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %182 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %181, i32 0, i32 38
  store i32 %180, i32* %182, align 4
  %183 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %184 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %183, i32 0, i32 37
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %187 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %186, i32 0, i32 37
  store i32 %185, i32* %187, align 4
  %188 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %189 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %188, i32 0, i32 36
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %192 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %191, i32 0, i32 36
  store i32 %190, i32* %192, align 4
  %193 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %194 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %193, i32 0, i32 35
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %197 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %196, i32 0, i32 35
  store i32 %195, i32* %197, align 4
  %198 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %199 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %198, i32 0, i32 34
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %202 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %201, i32 0, i32 34
  store i32 %200, i32* %202, align 4
  %203 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %204 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %203, i32 0, i32 33
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %207 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %206, i32 0, i32 33
  store i32 %205, i32* %207, align 4
  %208 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %209 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %208, i32 0, i32 32
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %212 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %211, i32 0, i32 32
  store i32 %210, i32* %212, align 4
  %213 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %214 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %213, i32 0, i32 31
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %217 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %216, i32 0, i32 31
  store i32 %215, i32* %217, align 4
  %218 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %219 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %218, i32 0, i32 30
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %222 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %221, i32 0, i32 30
  store i32 %220, i32* %222, align 4
  %223 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %224 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %223, i32 0, i32 29
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %227 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %226, i32 0, i32 29
  store i32 %225, i32* %227, align 4
  %228 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %229 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %228, i32 0, i32 28
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %232 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %231, i32 0, i32 28
  store i32 %230, i32* %232, align 4
  %233 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %234 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %233, i32 0, i32 27
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %237 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %236, i32 0, i32 27
  store i32 %235, i32* %237, align 4
  %238 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %239 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %238, i32 0, i32 26
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %242 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %241, i32 0, i32 26
  store i32 %240, i32* %242, align 4
  %243 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %244 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %243, i32 0, i32 25
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %247 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %246, i32 0, i32 25
  store i32 %245, i32* %247, align 4
  %248 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %249 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %248, i32 0, i32 24
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %252 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %251, i32 0, i32 24
  store i32 %250, i32* %252, align 4
  %253 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %254 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %253, i32 0, i32 23
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %257 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %256, i32 0, i32 23
  store i32 %255, i32* %257, align 4
  %258 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %259 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %258, i32 0, i32 22
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %262 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %261, i32 0, i32 22
  store i32 %260, i32* %262, align 4
  %263 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %264 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %263, i32 0, i32 21
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %267 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %266, i32 0, i32 21
  store i32 %265, i32* %267, align 4
  %268 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %269 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %268, i32 0, i32 20
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %272 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %271, i32 0, i32 20
  store i32 %270, i32* %272, align 4
  %273 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %274 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %273, i32 0, i32 19
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %277 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %276, i32 0, i32 19
  store i32 %275, i32* %277, align 4
  %278 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %279 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %278, i32 0, i32 18
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %282 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %281, i32 0, i32 18
  store i32 %280, i32* %282, align 4
  %283 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %284 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %283, i32 0, i32 17
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %287 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %286, i32 0, i32 17
  store i32 %285, i32* %287, align 4
  %288 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %289 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %288, i32 0, i32 16
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %292 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %291, i32 0, i32 16
  store i32 %290, i32* %292, align 4
  %293 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %294 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %297 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %296, i32 0, i32 15
  store i32 %295, i32* %297, align 4
  %298 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %299 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %298, i32 0, i32 14
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %302 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %301, i32 0, i32 14
  store i32 %300, i32* %302, align 4
  %303 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %304 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %303, i32 0, i32 13
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %307 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %306, i32 0, i32 13
  store i32 %305, i32* %307, align 4
  %308 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %309 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %312 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %311, i32 0, i32 12
  store i32 %310, i32* %312, align 4
  %313 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %314 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %313, i32 0, i32 11
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %317 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %316, i32 0, i32 11
  store i32 %315, i32* %317, align 4
  %318 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %319 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %318, i32 0, i32 10
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %322 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %321, i32 0, i32 10
  store i32 %320, i32* %322, align 4
  %323 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %324 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %327 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %326, i32 0, i32 9
  store i32 %325, i32* %327, align 4
  %328 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %329 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %332 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %331, i32 0, i32 8
  store i32 %330, i32* %332, align 4
  %333 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %334 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %337 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %336, i32 0, i32 7
  store i32 %335, i32* %337, align 4
  %338 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %339 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %342 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %341, i32 0, i32 6
  store i32 %340, i32* %342, align 4
  %343 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %344 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %347 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %346, i32 0, i32 5
  store i32 %345, i32* %347, align 4
  %348 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %349 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %352 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 4
  %353 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %354 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %357 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %356, i32 0, i32 3
  store i32 %355, i32* %357, align 4
  %358 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %359 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %362 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %361, i32 0, i32 2
  store i32 %360, i32* %362, align 4
  %363 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %364 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %367 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 4
  %368 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %369 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %372 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
