; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

@labels_wptr = common dso_local global double 0.000000e+00, align 8
@DNS_LABELS_BUFFSIZE = common dso_local global double 0.000000e+00, align 8
@labels_saved_bytes = common dso_local global double 0.000000e+00, align 8
@records_wptr = common dso_local global double 0.000000e+00, align 8
@DNS_RECORDS_BUFFSIZE = common dso_local global double 0.000000e+00, align 8
@trie_nodes = common dso_local global double 0.000000e+00, align 8
@DNS_MAX_TRIE_NODES = common dso_local global double 0.000000e+00, align 8
@trie_edges = common dso_local global double 0.000000e+00, align 8
@DNS_MAX_TRIE_EDGES = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_stats(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load double, double* @labels_wptr, align 8
  %4 = fmul double %3, 1.000000e+02
  %5 = load double, double* @DNS_LABELS_BUFFSIZE, align 8
  %6 = fdiv double %4, %5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store double %6, double* %8, align 8
  %9 = load double, double* @labels_saved_bytes, align 8
  %10 = fmul double %9, 1.000000e+02
  %11 = load double, double* @DNS_LABELS_BUFFSIZE, align 8
  %12 = fdiv double %10, %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store double %12, double* %14, align 8
  %15 = load double, double* @records_wptr, align 8
  %16 = fmul double %15, 1.000000e+02
  %17 = load double, double* @DNS_RECORDS_BUFFSIZE, align 8
  %18 = fdiv double %16, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store double %18, double* %20, align 8
  %21 = load double, double* @trie_nodes, align 8
  %22 = fmul double %21, 1.000000e+02
  %23 = load double, double* @DNS_MAX_TRIE_NODES, align 8
  %24 = fdiv double %22, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store double %24, double* %26, align 8
  %27 = load double, double* @trie_edges, align 8
  %28 = fmul double %27, 1.000000e+02
  %29 = load double, double* @DNS_MAX_TRIE_EDGES, align 8
  %30 = fdiv double %28, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store double %30, double* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
