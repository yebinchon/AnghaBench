; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_extend_args.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_extend_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multicall_space = type { i32*, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.mc_buffer = type { i64, i32, i32*, %struct.TYPE_2__* }

@mc_buffer = common dso_local global i32 0, align 4
@MC_ARGS = common dso_local global i64 0, align 8
@XEN_MC_XE_BAD_OP = common dso_local global i32 0, align 4
@XEN_MC_XE_NO_SPACE = common dso_local global i32 0, align 4
@XEN_MC_XE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_mc_extend_args(%struct.multicall_space* noalias sret %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mc_buffer*, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %7 = call %struct.mc_buffer* @this_cpu_ptr(i32* @mc_buffer)
  store %struct.mc_buffer* %7, %struct.mc_buffer** %6, align 8
  %8 = bitcast %struct.multicall_space* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = call i32 (...) @preemptible()
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MC_ARGS, align 8
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %3
  %23 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %22, %3
  %37 = phi i1 [ true, %3 ], [ %35, %22 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @XEN_MC_XE_BAD_OP, align 4
  %45 = call i32 @trace_xen_mc_extend_args(i64 %42, i64 %43, i32 %44)
  br label %97

46:                                               ; preds = %36
  %47 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* @MC_ARGS, align 8
  %53 = icmp uge i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @XEN_MC_XE_NO_SPACE, align 4
  %61 = call i32 @trace_xen_mc_extend_args(i64 %58, i64 %59, i32 %60)
  br label %97

62:                                               ; preds = %46
  %63 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %70
  %72 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %0, i32 0, i32 1
  store %struct.TYPE_2__* %71, %struct.TYPE_2__** %72, align 8
  %73 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %0, i32 0, i32 0
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.mc_buffer*, %struct.mc_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MC_ARGS, align 8
  %90 = icmp uge i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @XEN_MC_XE_OK, align 4
  %96 = call i32 @trace_xen_mc_extend_args(i64 %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %62, %57, %41
  ret void
}

declare dso_local %struct.mc_buffer* @this_cpu_ptr(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_xen_mc_extend_args(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
