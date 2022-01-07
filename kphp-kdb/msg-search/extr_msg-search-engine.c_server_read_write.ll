; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_server_read_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_server_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i32, i64, i32, i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"socket %d: disconnected, cleaning\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@EVA_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"server_reader=%d, ready=%02x, state=%02x\0A\00", align 1
@EVT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"socket %d: closing and cleaning\0A\00", align 1
@EVT_WRITE = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_read_write(i32 %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.connection*
  store %struct.connection* %11, %struct.connection** %8, align 8
  %12 = load %struct.connection*, %struct.connection** %8, align 8
  %13 = call i32 @assert(%struct.connection* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EPOLLHUP, align 4
  %18 = load i32, i32* @EPOLLERR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EPOLLRDHUP, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load i64, i64* @verbosity, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.connection*, %struct.connection** %8, align 8
  %33 = call i32 @free_connection_buffers(%struct.connection* %32)
  %34 = load %struct.connection*, %struct.connection** %8, align 8
  %35 = call i32 @memset(%struct.connection* %34, i32 0, i32 24)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @active_connections, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @active_connections, align 4
  %40 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %40, i32* %4, align 4
  br label %149

41:                                               ; preds = %3
  %42 = load %struct.connection*, %struct.connection** %8, align 8
  %43 = call i32 @server_writer(%struct.connection* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %149

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %99, %48
  %50 = load %struct.connection*, %struct.connection** %8, align 8
  %51 = call i32 @server_reader(%struct.connection* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* @verbosity, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.connection*, %struct.connection** %8, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %64
  br label %101

73:                                               ; preds = %67
  %74 = load %struct.connection*, %struct.connection** %8, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 3
  %76 = call i64 @get_ready_bytes(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.connection*, %struct.connection** %8, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.connection*, %struct.connection** %8, align 8
  %83 = call i32 @server_writer(%struct.connection* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EVT_READ, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.connection*, %struct.connection** %8, align 8
  %96 = getelementptr inbounds %struct.connection, %struct.connection* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, -3
  br label %99

99:                                               ; preds = %94, %87, %84
  %100 = phi i1 [ false, %87 ], [ false, %84 ], [ %98, %94 ]
  br i1 %100, label %49, label %101

101:                                              ; preds = %99, %72
  %102 = load %struct.connection*, %struct.connection** %8, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 4
  %104 = call i32 @free_unused_buffers(i32* %103)
  %105 = load %struct.connection*, %struct.connection** %8, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 3
  %107 = call i32 @free_unused_buffers(i32* %106)
  %108 = load %struct.connection*, %struct.connection** %8, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -3
  br i1 %111, label %112, label %129

112:                                              ; preds = %101
  %113 = load i64, i64* @verbosity, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load %struct.connection*, %struct.connection** %8, align 8
  %121 = call i32 @free_connection_buffers(%struct.connection* %120)
  %122 = load %struct.connection*, %struct.connection** %8, align 8
  %123 = call i32 @memset(%struct.connection* %122, i32 0, i32 24)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @active_connections, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* @active_connections, align 4
  %128 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %128, i32* %4, align 4
  br label %149

129:                                              ; preds = %101
  %130 = load %struct.connection*, %struct.connection** %8, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.connection*, %struct.connection** %8, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @EVT_WRITE, align 4
  %141 = load i32, i32* @EVT_SPEC, align 4
  %142 = or i32 %140, %141
  br label %147

143:                                              ; preds = %134, %129
  %144 = load i32, i32* @EVT_READ, align 4
  %145 = load i32, i32* @EVT_SPEC, align 4
  %146 = or i32 %144, %145
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i32 [ %142, %139 ], [ %146, %143 ]
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %119, %46, %31
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @assert(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @free_connection_buffers(%struct.connection*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @server_writer(%struct.connection*) #1

declare dso_local i32 @server_reader(%struct.connection*) #1

declare dso_local i64 @get_ready_bytes(i32*) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
