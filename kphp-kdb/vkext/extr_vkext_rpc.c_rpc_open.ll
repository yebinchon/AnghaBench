; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_open.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32, i64, i64, i64 }

@precise_now = common dso_local global i64 0, align 8
@ping_timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"server failed some time ago. Fail timeout not exceeded.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i8**, i32*)* @rpc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_open(%struct.rpc_server* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %75 [
    i32 129, label %11
    i32 130, label %19
    i32 128, label %42
  ]

11:                                               ; preds = %3
  %12 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @_rpc_connect_open(%struct.rpc_server* %12, i8** %13, i32* %14)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %76

18:                                               ; preds = %11
  br label %75

19:                                               ; preds = %3
  %20 = call i32 (...) @update_precise_now()
  %21 = load i64, i64* @precise_now, align 8
  %22 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %23 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load i64, i64* @ping_timeout, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %30 = call i32 @rpc_ping(%struct.rpc_server* %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %76

33:                                               ; preds = %28
  %34 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @_rpc_connect_open(%struct.rpc_server* %34, i8** %35, i32* %36)
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %76

40:                                               ; preds = %33
  br label %75

41:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %76

42:                                               ; preds = %3
  %43 = call i32 (...) @update_precise_now()
  %44 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %45 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i64, i64* @precise_now, align 8
  %50 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %51 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %54 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp sge i64 %49, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @_rpc_connect_open(%struct.rpc_server* %59, i8** %60, i32* %61)
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %76

65:                                               ; preds = %58
  br label %74

66:                                               ; preds = %48, %42
  %67 = load i8**, i8*** %6, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = call i8* @estrdup(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %71 = load i8**, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32*, i32** %7, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %66
  br label %75

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %3, %74, %73, %40, %18
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %64, %41, %39, %32, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @_rpc_connect_open(%struct.rpc_server*, i8**, i32*) #1

declare dso_local i32 @update_precise_now(...) #1

declare dso_local i32 @rpc_ping(%struct.rpc_server*) #1

declare dso_local i8* @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
