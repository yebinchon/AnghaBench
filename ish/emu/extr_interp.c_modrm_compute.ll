; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_interp.c_modrm_compute.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_interp.c_modrm_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32 }
%struct.tlb = type { i32 }
%struct.modrm = type { i64, i64, i64, i64, i32, i64 }
%struct.regptr = type { i32 }

@modrm_reg = common dso_local global i64 0, align 8
@reg_none = common dso_local global i64 0, align 8
@modrm_mem_si = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_state*, %struct.tlb*, i32*, %struct.modrm*, %struct.regptr*, %struct.regptr*)* @modrm_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modrm_compute(%struct.cpu_state* %0, %struct.tlb* %1, i32* %2, %struct.modrm* %3, %struct.regptr* %4, %struct.regptr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpu_state*, align 8
  %9 = alloca %struct.tlb*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.modrm*, align 8
  %12 = alloca %struct.regptr*, align 8
  %13 = alloca %struct.regptr*, align 8
  %14 = alloca %struct.regptr, align 4
  %15 = alloca %struct.regptr, align 4
  %16 = alloca %struct.regptr, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %8, align 8
  store %struct.tlb* %1, %struct.tlb** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.modrm* %3, %struct.modrm** %11, align 8
  store %struct.regptr* %4, %struct.regptr** %12, align 8
  store %struct.regptr* %5, %struct.regptr** %13, align 8
  %17 = load %struct.cpu_state*, %struct.cpu_state** %8, align 8
  %18 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %17, i32 0, i32 0
  %19 = load %struct.tlb*, %struct.tlb** %9, align 8
  %20 = load %struct.modrm*, %struct.modrm** %11, align 8
  %21 = call i32 @modrm_decode32(i32* %18, %struct.tlb* %19, %struct.modrm* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %92

24:                                               ; preds = %6
  %25 = load %struct.regptr*, %struct.regptr** %12, align 8
  %26 = load %struct.modrm*, %struct.modrm** %11, align 8
  %27 = getelementptr inbounds %struct.modrm, %struct.modrm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @regptr_from_reg(i64 %28)
  %30 = getelementptr inbounds %struct.regptr, %struct.regptr* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.regptr* %25 to i8*
  %32 = bitcast %struct.regptr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.regptr*, %struct.regptr** %13, align 8
  %34 = load %struct.modrm*, %struct.modrm** %11, align 8
  %35 = getelementptr inbounds %struct.modrm, %struct.modrm* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @regptr_from_reg(i64 %36)
  %38 = getelementptr inbounds %struct.regptr, %struct.regptr* %15, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.regptr* %33 to i8*
  %40 = bitcast %struct.regptr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.modrm*, %struct.modrm** %11, align 8
  %42 = getelementptr inbounds %struct.modrm, %struct.modrm* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @modrm_reg, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %92

47:                                               ; preds = %24
  %48 = load %struct.modrm*, %struct.modrm** %11, align 8
  %49 = getelementptr inbounds %struct.modrm, %struct.modrm* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @reg_none, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.regptr*, %struct.regptr** %13, align 8
  %55 = getelementptr inbounds %struct.regptr, %struct.regptr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REGISTER(i32 %56, i32 32)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.modrm*, %struct.modrm** %11, align 8
  %63 = getelementptr inbounds %struct.modrm, %struct.modrm* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %64
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.modrm*, %struct.modrm** %11, align 8
  %71 = getelementptr inbounds %struct.modrm, %struct.modrm* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @modrm_mem_si, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %61
  %76 = load %struct.modrm*, %struct.modrm** %11, align 8
  %77 = getelementptr inbounds %struct.modrm, %struct.modrm* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @regptr_from_reg(i64 %78)
  %80 = getelementptr inbounds %struct.regptr, %struct.regptr* %16, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.regptr, %struct.regptr* %16, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REGISTER(i32 %82, i32 32)
  %84 = load %struct.modrm*, %struct.modrm** %11, align 8
  %85 = getelementptr inbounds %struct.modrm, %struct.modrm* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %83, %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %75, %61
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %46, %23
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @modrm_decode32(i32*, %struct.tlb*, %struct.modrm*) #1

declare dso_local i32 @regptr_from_reg(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
