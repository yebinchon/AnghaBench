; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kitten_php_current_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kitten_php_current_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rpc_cluster** }
%struct.rpc_cluster = type { i32 }

@CurConf = common dso_local global %struct.TYPE_2__* null, align 8
@KittenPhpNum = common dso_local global i64 0, align 8
@worker_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kitten_php_current_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rpc_cluster*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurConf, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.rpc_cluster**, %struct.rpc_cluster*** %4, align 8
  %6 = load i64, i64* @KittenPhpNum, align 8
  %7 = getelementptr inbounds %struct.rpc_cluster*, %struct.rpc_cluster** %5, i64 %6
  %8 = load %struct.rpc_cluster*, %struct.rpc_cluster** %7, align 8
  store %struct.rpc_cluster* %8, %struct.rpc_cluster** %2, align 8
  %9 = load %struct.rpc_cluster*, %struct.rpc_cluster** %2, align 8
  %10 = icmp ne %struct.rpc_cluster* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @worker_tree, align 4
  %14 = call i32 @tree_count_worker(i32 %13)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @tree_count_worker(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
