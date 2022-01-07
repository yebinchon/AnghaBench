; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_create_client.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, %struct.connection*, %struct.connection*, i32, i32, i32, i32, %struct.cluster_server*, i32* }
%struct.cluster_server = type { i32, i32, %struct.TYPE_2__, i32, %struct.connection* }
%struct.TYPE_2__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error connecting to %s:%d: %m\00", align 1
@MAX_EVENTS = common dso_local global i32 0, align 4
@Events = common dso_local global i32* null, align 8
@Connections = common dso_local global %struct.connection* null, align 8
@BUFF_SIZE = common dso_local global i32 0, align 4
@client_worker = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"after insert()\0A\00", align 1
@C_INCONN = common dso_local global i32 0, align 4
@outbound_connections = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"outbound connection #%d: handle %d to %s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @create_client(%struct.cluster_server* %0) #0 {
  %2 = alloca %struct.cluster_server*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32*, align 8
  store %struct.cluster_server* %0, %struct.cluster_server** %2, align 8
  %7 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %8 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %12 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @client_socket(i32 %10, i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %20 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @inet_ntoa(i32 %22)
  %24 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %25 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MAX_EVENTS, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** @Events, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load %struct.connection*, %struct.connection** @Connections, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %39, i64 %41
  store %struct.connection* %42, %struct.connection** %4, align 8
  %43 = load %struct.connection*, %struct.connection** %4, align 8
  %44 = call i32 @memset(%struct.connection* %43, i32 0, i32 56)
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 9
  store i32* %48, i32** %50, align 8
  %51 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %52 = load %struct.connection*, %struct.connection** %4, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 8
  store %struct.cluster_server* %51, %struct.cluster_server** %53, align 8
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 7
  %56 = load %struct.connection*, %struct.connection** %4, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUFF_SIZE, align 4
  %60 = call i32 @init_builtin_buffer(i32* %55, i32 %58, i32 %59)
  %61 = load %struct.connection*, %struct.connection** %4, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 5
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BUFF_SIZE, align 4
  %67 = call i32 @init_builtin_buffer(i32* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @client_worker, align 4
  %70 = load %struct.connection*, %struct.connection** %4, align 8
  %71 = call i32 @epoll_sethandler(i32 %68, i32 0, i32 %69, %struct.connection* %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @EVT_WRITE, align 4
  %74 = load i32, i32* @EVT_SPEC, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @epoll_insert(i32 %72, i32 %75)
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %29
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %29
  %83 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %84 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %83, i32 0, i32 4
  %85 = load %struct.connection*, %struct.connection** %84, align 8
  %86 = icmp ne %struct.connection* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load %struct.connection*, %struct.connection** %4, align 8
  %89 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %90 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %89, i32 0, i32 4
  store %struct.connection* %88, %struct.connection** %90, align 8
  %91 = load %struct.connection*, %struct.connection** %4, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 2
  store %struct.connection* %88, %struct.connection** %92, align 8
  %93 = load %struct.connection*, %struct.connection** %4, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 3
  store %struct.connection* %88, %struct.connection** %94, align 8
  br label %115

95:                                               ; preds = %82
  %96 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %97 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %96, i32 0, i32 4
  %98 = load %struct.connection*, %struct.connection** %97, align 8
  store %struct.connection* %98, %struct.connection** %5, align 8
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = load %struct.connection*, %struct.connection** %4, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 3
  store %struct.connection* %99, %struct.connection** %101, align 8
  %102 = load %struct.connection*, %struct.connection** %5, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 2
  %104 = load %struct.connection*, %struct.connection** %103, align 8
  %105 = load %struct.connection*, %struct.connection** %4, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 2
  store %struct.connection* %104, %struct.connection** %106, align 8
  %107 = load %struct.connection*, %struct.connection** %4, align 8
  %108 = load %struct.connection*, %struct.connection** %5, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 2
  %110 = load %struct.connection*, %struct.connection** %109, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 3
  store %struct.connection* %107, %struct.connection** %111, align 8
  %112 = load %struct.connection*, %struct.connection** %4, align 8
  %113 = load %struct.connection*, %struct.connection** %5, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 2
  store %struct.connection* %112, %struct.connection** %114, align 8
  br label %115

115:                                              ; preds = %95, %87
  %116 = load i32, i32* @C_INCONN, align 4
  %117 = load %struct.connection*, %struct.connection** %4, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %120 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @outbound_connections, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @outbound_connections, align 4
  %125 = load i32, i32* @verbosity, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %115
  %128 = load i32, i32* @stderr, align 4
  %129 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %130 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.connection*, %struct.connection** %4, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %136 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @inet_ntoa(i32 %138)
  %140 = load %struct.cluster_server*, %struct.cluster_server** %2, align 8
  %141 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %134, i8* %139, i32 %142)
  br label %144

144:                                              ; preds = %127, %115
  %145 = load %struct.connection*, %struct.connection** %4, align 8
  ret %struct.connection* %145
}

declare dso_local i32 @client_socket(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @init_builtin_buffer(i32*, i32, i32) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %struct.connection*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
