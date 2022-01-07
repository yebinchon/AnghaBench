; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_check_aio_completion.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_check_aio_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i32, %struct.aio_connection*, %struct.conn_query*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.conn_query = type { %struct.TYPE_8__*, %struct.conn_query* }
%struct.TYPE_8__ = type { i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 (%struct.connection*, i32)* }
%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"in check_aio_completion(%p [first_query=%p, last_query=%p])\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"aio_query %p in progress...\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"aio_query %p in progress, but all conn_queries are dead, canceling aio.\0A\00", align 1
@AIO_NOTCANCELED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"aio_cancel(%d,%p) returns AIO_NOTCANCELED\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"aio_query %p still in progress.\0A\00", align 1
@aio_errors_verbosity = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"aio_return() returns %d, errno=%d (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"freeing aio_connection at %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_aio_completion(%struct.aio_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aio_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.conn_query*, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.aio_connection* %0, %struct.aio_connection** %3, align 8
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %13 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %14 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %13, i32 0, i32 2
  %15 = load %struct.conn_query*, %struct.conn_query** %14, align 8
  %16 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %17 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.aio_connection* %12, %struct.conn_query* %15, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  store i64 0, i64* @errno, align 8
  %21 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %22 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %21, i32 0, i32 1
  %23 = load %struct.aio_connection*, %struct.aio_connection** %22, align 8
  %24 = call i32 @aio_error(%struct.aio_connection* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EINPROGRESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %20
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.aio_connection* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %37 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %36, i32 0, i32 2
  %38 = load %struct.conn_query*, %struct.conn_query** %37, align 8
  %39 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %40 = bitcast %struct.aio_connection* %39 to %struct.conn_query*
  %41 = icmp eq %struct.conn_query* %38, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %35
  %43 = load i32, i32* @verbosity, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %51 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %54 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %53, i32 0, i32 1
  %55 = load %struct.aio_connection*, %struct.aio_connection** %54, align 8
  %56 = call i64 @aio_cancel(i32 %52, %struct.aio_connection* %55)
  %57 = load i64, i64* @AIO_NOTCANCELED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %65 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %68 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %67, i32 0, i32 1
  %69 = load %struct.aio_connection*, %struct.aio_connection** %68, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %66, %struct.aio_connection* %69)
  br label %71

71:                                               ; preds = %62, %59
  store i32 0, i32* %2, align 4
  br label %182

72:                                               ; preds = %49
  %73 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %74 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %73, i32 0, i32 1
  %75 = load %struct.aio_connection*, %struct.aio_connection** %74, align 8
  %76 = call i32 @aio_error(%struct.aio_connection* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @EINPROGRESS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @verbosity, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @stderr, align 4
  %85 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.aio_connection* %85)
  br label %87

87:                                               ; preds = %83, %80
  store i32 0, i32* %2, align 4
  br label %182

88:                                               ; preds = %72
  br label %90

89:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %182

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %20
  %92 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %93 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %92, i32 0, i32 1
  %94 = load %struct.aio_connection*, %struct.aio_connection** %93, align 8
  %95 = call i32 @aio_return(%struct.aio_connection* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @verbosity, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* @aio_errors_verbosity, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101, %91
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i8* @strerror(i32 %108)
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107, i8* %109)
  br label %111

111:                                              ; preds = %104, %101, %98
  %112 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %113 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %115, align 8
  %117 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %118 = bitcast %struct.aio_connection* %117 to %struct.connection*
  %119 = load i32, i32* %5, align 4
  %120 = call i32 %116(%struct.connection* %118, i32 %119)
  %121 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %122 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %121, i32 0, i32 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %125 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %127, align 8
  %128 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %129 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %128, i32 0, i32 3
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %132 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %131, i32 0, i32 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %134, align 8
  %135 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %136 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %135, i32 0, i32 2
  %137 = load %struct.conn_query*, %struct.conn_query** %136, align 8
  store %struct.conn_query* %137, %struct.conn_query** %6, align 8
  br label %138

138:                                              ; preds = %166, %111
  %139 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %140 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %141 = bitcast %struct.aio_connection* %140 to %struct.conn_query*
  %142 = icmp ne %struct.conn_query* %139, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %138
  %144 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %145 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %144, i32 0, i32 1
  %146 = load %struct.conn_query*, %struct.conn_query** %145, align 8
  store %struct.conn_query* %146, %struct.conn_query** %7, align 8
  %147 = load i32, i32* %5, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %151 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)** %153, align 8
  %155 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %156 = call i32 %154(%struct.conn_query* %155)
  br label %165

157:                                              ; preds = %143
  %158 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %159 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)** %161, align 8
  %163 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %164 = call i32 %162(%struct.conn_query* %163)
  br label %165

165:                                              ; preds = %157, %149
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  store %struct.conn_query* %167, %struct.conn_query** %6, align 8
  br label %138

168:                                              ; preds = %138
  %169 = load i32, i32* @verbosity, align 4
  %170 = icmp sgt i32 %169, 2
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.aio_connection* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %177 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %176, i32 0, i32 1
  %178 = load %struct.aio_connection*, %struct.aio_connection** %177, align 8
  %179 = call i32 @zfree(%struct.aio_connection* %178, i32 4)
  %180 = load %struct.aio_connection*, %struct.aio_connection** %3, align 8
  %181 = call i32 @zfree(%struct.aio_connection* %180, i32 56)
  store i32 1, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %89, %87, %71
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @aio_error(%struct.aio_connection*) #1

declare dso_local i64 @aio_cancel(i32, %struct.aio_connection*) #1

declare dso_local i32 @aio_return(%struct.aio_connection*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @zfree(%struct.aio_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
