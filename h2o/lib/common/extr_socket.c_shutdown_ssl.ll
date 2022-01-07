; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_shutdown_ssl.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_shutdown_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_20__, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_22__ = type { i32, i32 }

@PTLS_ALERT_LEVEL_WARNING = common dso_local global i32 0, align 4
@PTLS_ALERT_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i8*)* @shutdown_ssl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_ssl(%struct.TYPE_23__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca [32 x i32], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %106

11:                                               ; preds = %2
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %106

21:                                               ; preds = %11
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %30 = call i32 @ptls_buffer_init(%struct.TYPE_22__* %6, i32* %29, i32 128)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @PTLS_ALERT_LEVEL_WARNING, align 4
  %37 = load i32, i32* @PTLS_ALERT_CLOSE_NOTIFY, align 4
  %38 = call i32 @ptls_send_alert(i32* %35, %struct.TYPE_22__* %6, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %106

41:                                               ; preds = %28
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @write_ssl_bytes(%struct.TYPE_23__* %42, i32 %44, i32 %46)
  %48 = call i32 @ptls_buffer_dispose(%struct.TYPE_22__* %6)
  store i32 1, i32* %5, align 4
  br label %69

49:                                               ; preds = %21
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = call i32 (...) @ERR_clear_error()
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @SSL_shutdown(i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %106

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %49
  br label %106

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = call i32 @h2o_socket_read_stop(%struct.TYPE_23__* %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, void (%struct.TYPE_23__*, i8*)* @dispose_socket, void (%struct.TYPE_23__*, i8*)* @shutdown_ssl
  %86 = call i32 @flush_pending_ssl(%struct.TYPE_23__* %81, void (%struct.TYPE_23__*, i8*)* %85)
  br label %105

87:                                               ; preds = %69
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @SSL_get_error(i32* %95, i32 %96)
  %98 = load i64, i64* @SSL_ERROR_WANT_READ, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %102 = call i32 @h2o_socket_read_start(%struct.TYPE_23__* %101, void (%struct.TYPE_23__*, i8*)* @shutdown_ssl)
  br label %104

103:                                              ; preds = %90, %87
  br label %106

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %78
  br label %109

106:                                              ; preds = %103, %67, %65, %40, %17, %10
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %108 = load i8*, i8** %4, align 8
  call void @dispose_socket(%struct.TYPE_23__* %107, i8* %108)
  br label %109

109:                                              ; preds = %106, %105
  ret void
}

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @ptls_send_alert(i32*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @write_ssl_bytes(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_22__*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @h2o_socket_read_stop(%struct.TYPE_23__*) #1

declare dso_local i32 @flush_pending_ssl(%struct.TYPE_23__*, void (%struct.TYPE_23__*, i8*)*) #1

declare dso_local void @dispose_socket(%struct.TYPE_23__*, i8*) #1

declare dso_local i64 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_23__*, void (%struct.TYPE_23__*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
