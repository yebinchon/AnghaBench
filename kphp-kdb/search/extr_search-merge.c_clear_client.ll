; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_clear_client.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_clear_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, %struct.TYPE_4__*, %struct.connection*, %struct.TYPE_3__*, %struct.cluster_server* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.connection* }
%struct.cluster_server = type { i32, i64, i64, i64, i32, i32, %struct.connection* }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cleaning outbound socket %d...\0A\00", align 1
@C_INCONN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"could not connect to %s:%d\0A\00", align 1
@active_outbound_connections = common dso_local global i32 0, align 4
@outbound_connections = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"trying to reconnect to %s:%d...\0A\00", align 1
@EVA_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_client(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.cluster_server*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 5
  %6 = load %struct.cluster_server*, %struct.cluster_server** %5, align 8
  store %struct.cluster_server* %6, %struct.cluster_server** %3, align 8
  %7 = load i64, i64* @verbosity, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @C_INCONN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 5
  %25 = load %struct.cluster_server*, %struct.cluster_server** %24, align 8
  %26 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @inet_ntoa(i32 %27)
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 5
  %31 = load %struct.cluster_server*, %struct.cluster_server** %30, align 8
  %32 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %33)
  br label %48

35:                                               ; preds = %15
  %36 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %37 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %41 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @active_outbound_connections, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* @active_outbound_connections, align 4
  br label %48

48:                                               ; preds = %35, %21
  %49 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %50 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %54 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* @outbound_connections, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @outbound_connections, align 4
  %61 = load %struct.connection*, %struct.connection** %2, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load %struct.connection*, %struct.connection** %2, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 3
  %68 = load %struct.connection*, %struct.connection** %67, align 8
  %69 = load %struct.connection*, %struct.connection** %2, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.connection* %68, %struct.connection** %72, align 8
  br label %73

73:                                               ; preds = %65, %48
  %74 = load %struct.connection*, %struct.connection** %2, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 3
  %76 = load %struct.connection*, %struct.connection** %75, align 8
  %77 = icmp ne %struct.connection* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.connection*, %struct.connection** %2, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 3
  %84 = load %struct.connection*, %struct.connection** %83, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 4
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %85, align 8
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %88 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %87, i32 0, i32 6
  %89 = load %struct.connection*, %struct.connection** %88, align 8
  %90 = load %struct.connection*, %struct.connection** %2, align 8
  %91 = icmp eq %struct.connection* %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.connection*, %struct.connection** %2, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 3
  %95 = load %struct.connection*, %struct.connection** %94, align 8
  %96 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %97 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %96, i32 0, i32 6
  store %struct.connection* %95, %struct.connection** %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.connection*, %struct.connection** %2, align 8
  %100 = call i32 @free_connection_buffers(%struct.connection* %99)
  %101 = load %struct.connection*, %struct.connection** %2, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.connection*, %struct.connection** %2, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.connection*, %struct.connection** %2, align 8
  %112 = call i32 @memset(%struct.connection* %111, i32 0, i32 48)
  %113 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %114 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %120 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %156, label %123

123:                                              ; preds = %110
  %124 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %125 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %124, i32 0, i32 6
  store %struct.connection* null, %struct.connection** %125, align 8
  %126 = load i64, i64* @now, align 8
  %127 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %128 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %123
  %132 = load i64, i64* @now, align 8
  %133 = add nsw i64 %132, 1
  %134 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %135 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %137 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i64, i64* @verbosity, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %131
  %143 = load i32, i32* @stderr, align 4
  %144 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %145 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @inet_ntoa(i32 %146)
  %148 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %149 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %147, i32 %150)
  br label %152

152:                                              ; preds = %142, %131
  %153 = load %struct.cluster_server*, %struct.cluster_server** %3, align 8
  %154 = call i32 @create_client(%struct.cluster_server* %153)
  br label %155

155:                                              ; preds = %152, %123
  br label %156

156:                                              ; preds = %155, %110
  %157 = load i32, i32* @EVA_DESTROY, align 4
  ret i32 %157
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_connection_buffers(%struct.connection*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @create_client(%struct.cluster_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
