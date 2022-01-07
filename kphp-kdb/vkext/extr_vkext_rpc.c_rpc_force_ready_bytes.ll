; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_force_ready_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_force_ready_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@force_read = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i32, double)* @rpc_force_ready_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_force_ready_bytes(%struct.rpc_server* %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load i32, i32* @force_read, align 4
  %26 = call i32 @ADD_CNT(i32 %25)
  %27 = load i32, i32* @force_read, align 4
  %28 = call i32 @START_TIMER(i32 %27)
  %29 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %35 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @POLLIN, align 4
  %44 = load i32, i32* @POLLERR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @POLLNVAL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @POLLHUP, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %107, %24
  store i64 0, i64* @errno, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @poll(%struct.pollfd* %10, i32 1, i32 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %107

59:                                               ; preds = %55
  %60 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @errno, align 8
  %65 = call i8* @strerror(i64 %64)
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i8* [ %65, %63 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %66 ]
  %69 = load i64, i64* @errno, align 8
  %70 = call i32 @rpc_server_seterror(%struct.rpc_server* %60, i8* %68, i64 %69)
  %71 = load i32, i32* @force_read, align 4
  %72 = call i32 @END_TIMER(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %117

76:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %77 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @get_ready_bytes(%struct.rpc_server* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %117

83:                                               ; preds = %76
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* @force_read, align 4
  %91 = call i32 @END_TIMER(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %4, align 4
  br label %117

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @POLLERR, align 4
  %99 = load i32, i32* @POLLNVAL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @POLLHUP, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %117

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %58
  %108 = load double, double* %7, align 8
  %109 = call i32 @get_ms_timeout(double %108)
  store i32 %109, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %51, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @force_read, align 4
  %113 = call i32 @END_TIMER(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %105, %89, %82, %67, %20
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rpc_server_seterror(%struct.rpc_server*, i8*, i64) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @get_ready_bytes(%struct.rpc_server*, i32) #1

declare dso_local i32 @get_ms_timeout(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
