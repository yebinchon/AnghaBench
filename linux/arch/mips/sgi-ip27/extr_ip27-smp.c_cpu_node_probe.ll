; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-smp.c_cpu_node_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-smp.c_cpu_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@GDA = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_COMPACT_NODES = common dso_local global i32 0, align 4
@INVALID_NASID = common dso_local global i64 0, align 8
@compact_to_nasid_node = common dso_local global i64* null, align 8
@MAX_NASIDS = common dso_local global i32 0, align 4
@INVALID_CNODEID = common dso_local global i8* null, align 8
@nasid_to_compact_node = common dso_local global i32* null, align 8
@MAXCPUS = common dso_local global i32 0, align 4
@cpuid_to_compact_node = common dso_local global i8** null, align 8
@node_online_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Discovered %d cpus on %d nodes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_node_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @GDA, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %16, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @MAX_COMPACT_NODES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i64, i64* @INVALID_NASID, align 8
  %12 = load i64*, i64** @compact_to_nasid_node, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64 %11, i64* %15, align 8
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %6

19:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @MAX_NASIDS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i8*, i8** @INVALID_CNODEID, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** @nasid_to_compact_node, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %20

34:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @MAXCPUS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** @INVALID_CNODEID, align 8
  %41 = load i8**, i8*** @cpuid_to_compact_node, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load i32, i32* @node_online_map, align 4
  %50 = call i32 @nodes_clear(i32 %49)
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %83, %48
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @MAX_COMPACT_NODES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @INVALID_NASID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %86

67:                                               ; preds = %55
  %68 = load i64, i64* %4, align 8
  %69 = load i64*, i64** @compact_to_nasid_node, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load i32, i32* %1, align 4
  %74 = load i32*, i32** @nasid_to_compact_node, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = call i32 (...) @num_online_nodes()
  %78 = call i32 @node_set_online(i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @do_cpumask(i32 %79, i64 %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %51

86:                                               ; preds = %66, %51
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 (...) @num_online_nodes()
  %90 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @node_set_online(i32) #1

declare dso_local i32 @num_online_nodes(...) #1

declare dso_local i32 @do_cpumask(i32, i64, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
