; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_stage3.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_stage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streebog_uint512 = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.streebog_state = type { i32, i32, i32, %struct.streebog_uint512, %struct.streebog_uint512, %struct.streebog_uint512 }

@buffer0 = common dso_local global %struct.streebog_uint512 zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streebog_state*)* @streebog_stage3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streebog_stage3(%struct.streebog_state* %0) #0 {
  %2 = alloca %struct.streebog_state*, align 8
  %3 = alloca %struct.streebog_uint512, align 8
  store %struct.streebog_state* %0, %struct.streebog_state** %2, align 8
  %4 = bitcast %struct.streebog_uint512* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %6 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 3
  %9 = call i32 @cpu_to_le64(i32 %8)
  %10 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %3, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %14 = call i32 @streebog_pad(%struct.streebog_state* %13)
  %15 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %16 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %15, i32 0, i32 1
  %17 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %18 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %17, i32 0, i32 4
  %19 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %20 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %19, i32 0, i32 5
  %21 = call i32 @streebog_g(i32* %16, %struct.streebog_uint512* %18, %struct.streebog_uint512* %20)
  %22 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %23 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %22, i32 0, i32 4
  %24 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %25 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %24, i32 0, i32 4
  %26 = call i32 @streebog_add512(%struct.streebog_uint512* %23, %struct.streebog_uint512* %3, %struct.streebog_uint512* %25)
  %27 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %28 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %27, i32 0, i32 3
  %29 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %30 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %29, i32 0, i32 5
  %31 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %32 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %31, i32 0, i32 3
  %33 = call i32 @streebog_add512(%struct.streebog_uint512* %28, %struct.streebog_uint512* %30, %struct.streebog_uint512* %32)
  %34 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %35 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %34, i32 0, i32 1
  %36 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %37 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %36, i32 0, i32 4
  %38 = call i32 @streebog_g(i32* %35, %struct.streebog_uint512* @buffer0, %struct.streebog_uint512* %37)
  %39 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %40 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %39, i32 0, i32 1
  %41 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %42 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %41, i32 0, i32 3
  %43 = call i32 @streebog_g(i32* %40, %struct.streebog_uint512* @buffer0, %struct.streebog_uint512* %42)
  %44 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %45 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %44, i32 0, i32 2
  %46 = load %struct.streebog_state*, %struct.streebog_state** %2, align 8
  %47 = getelementptr inbounds %struct.streebog_state, %struct.streebog_state* %46, i32 0, i32 1
  %48 = call i32 @memcpy(i32* %45, i32* %47, i32 16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @streebog_pad(%struct.streebog_state*) #2

declare dso_local i32 @streebog_g(i32*, %struct.streebog_uint512*, %struct.streebog_uint512*) #2

declare dso_local i32 @streebog_add512(%struct.streebog_uint512*, %struct.streebog_uint512*, %struct.streebog_uint512*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
