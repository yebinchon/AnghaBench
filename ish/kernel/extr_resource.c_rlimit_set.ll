; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_resource.c_rlimit_set.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_resource.c_rlimit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { %struct.tgroup* }
%struct.tgroup = type { i32, %struct.rlimit_* }
%struct.rlimit_ = type { i32 }

@_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task*, i32, i32)* @rlimit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rlimit_set(%struct.task* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rlimit_, align 4
  %6 = alloca %struct.task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tgroup*, align 8
  %9 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.task* %0, %struct.task** %6, align 8
  store i32 %1, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @resource_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @_EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.task*, %struct.task** %6, align 8
  %17 = getelementptr inbounds %struct.task, %struct.task* %16, i32 0, i32 0
  %18 = load %struct.tgroup*, %struct.tgroup** %17, align 8
  store %struct.tgroup* %18, %struct.tgroup** %8, align 8
  %19 = load %struct.tgroup*, %struct.tgroup** %8, align 8
  %20 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %19, i32 0, i32 0
  %21 = call i32 @lock(i32* %20)
  %22 = load %struct.tgroup*, %struct.tgroup** %8, align 8
  %23 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %22, i32 0, i32 1
  %24 = load %struct.rlimit_*, %struct.rlimit_** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %24, i64 %26
  %28 = bitcast %struct.rlimit_* %27 to i8*
  %29 = bitcast %struct.rlimit_* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.tgroup*, %struct.tgroup** %8, align 8
  %31 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %30, i32 0, i32 0
  %32 = call i32 @unlock(i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %15, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @resource_valid(i32) #1

declare dso_local i32 @lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
