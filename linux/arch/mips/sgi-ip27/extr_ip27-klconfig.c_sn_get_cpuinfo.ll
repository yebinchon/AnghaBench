; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-klconfig.c_sn_get_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-klconfig.c_sn_get_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@GDA = common dso_local global %struct.TYPE_9__* null, align 8
@MAXCPUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"sn_get_cpuinfo: illegal cpuid 0x%lx\0A\00", align 1
@INVALID_CNODEID = common dso_local global i64 0, align 8
@INVALID_NASID = common dso_local global i32 0, align 4
@CPUS_PER_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @sn_get_cpuinfo(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @GDA, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %7, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAXCPUS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %14)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @get_cpu_cnode(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @INVALID_CNODEID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @INVALID_NASID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CPUS_PER_NODE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_8__* @nasid_slice_to_cpuinfo(i32 %39, i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %2, align 8
  br label %58

53:                                               ; preds = %44, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %34

57:                                               ; preds = %34
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

58:                                               ; preds = %57, %51, %32, %22, %13
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %59
}

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i64 @get_cpu_cnode(i64) #1

declare dso_local %struct.TYPE_8__* @nasid_slice_to_cpuinfo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
