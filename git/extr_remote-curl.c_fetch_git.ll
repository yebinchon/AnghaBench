; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_fetch_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_fetch_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.argv_array = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_6__, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.discovery = type { i32 }
%struct.ref = type { i32*, i32 }
%struct.rpc_state = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"fetch-pack\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"--stateless-rpc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--lock-pack\00", align 1
@options = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"--include-tag\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--thin\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"--check-self-contained-and-connected\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"--cloning\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"--update-shallow\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"--no-progress\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"--depth=%lu\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"--shallow-since=%s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"--shallow-exclude=%s\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"--deepen-relative\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"--from-promisor\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"--no-dependents\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--filter=%s\00", align 1
@url = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [37 x i8] c"cannot fetch by sha1 over smart http\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"git-upload-pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.discovery*, i32, %struct.ref**)* @fetch_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_git(%struct.discovery* %0, i32 %1, %struct.ref** %2) #0 {
  %4 = alloca %struct.discovery*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.rpc_state, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.argv_array, align 4
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca %struct.ref*, align 8
  store %struct.discovery* %0, %struct.discovery** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ref** %2, %struct.ref*** %6, align 8
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.argv_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 13), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 12), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 0), align 8
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* null)
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 11), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 10), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 9), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 8), align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 4), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 4), align 8
  %57 = call i32 @argv_array_pushf(%struct.argv_array* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 7), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 7), align 8
  %63 = call i32 @argv_array_pushf(%struct.argv_array* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 6, i32 0), align 8
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 6, i32 1), align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @argv_array_pushf(%struct.argv_array* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 5), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 4), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83, %80
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 3), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 2), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @argv_array_push(%struct.argv_array* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 1), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 1), align 8
  %103 = call i32 @argv_array_pushf(%struct.argv_array* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @url, i32 0, i32 0), align 8
  %106 = call i32 @argv_array_push(%struct.argv_array* %11, i8* %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %133, %104
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load %struct.ref**, %struct.ref*** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ref*, %struct.ref** %112, i64 %114
  %116 = load %struct.ref*, %struct.ref** %115, align 8
  store %struct.ref* %116, %struct.ref** %13, align 8
  %117 = load %struct.ref*, %struct.ref** %13, align 8
  %118 = getelementptr inbounds %struct.ref, %struct.ref* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  %123 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  %124 = call i32 @die(i32 %123)
  br label %125

125:                                              ; preds = %122, %111
  %126 = load %struct.ref*, %struct.ref** %13, align 8
  %127 = getelementptr inbounds %struct.ref, %struct.ref* %126, i32 0, i32 1
  %128 = call i32 @oid_to_hex(i32* %127)
  %129 = load %struct.ref*, %struct.ref** %13, align 8
  %130 = getelementptr inbounds %struct.ref, %struct.ref* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @packet_buf_write(%struct.strbuf* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %128, i32* %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %107

136:                                              ; preds = %107
  %137 = call i32 @packet_buf_flush(%struct.strbuf* %8)
  %138 = call i32 @memset(%struct.rpc_state* %7, i32 0, i32 16)
  %139 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %139, align 8
  %140 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %7, i32 0, i32 1
  store i32 1, i32* %140, align 8
  %141 = load %struct.discovery*, %struct.discovery** %4, align 8
  %142 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @rpc_service(%struct.rpc_state* %7, %struct.discovery* %141, i32 %143, %struct.strbuf* %8, %struct.strbuf* %12)
  store i32 %144, i32* %10, align 4
  %145 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @write_or_die(i32 1, i32 %150, i64 %152)
  br label %154

154:                                              ; preds = %148, %136
  %155 = call i32 @strbuf_release(%struct.strbuf* %12)
  %156 = call i32 @strbuf_release(%struct.strbuf* %8)
  %157 = call i32 @argv_array_clear(%struct.argv_array* %11)
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i64) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, i32, i32*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @packet_buf_flush(%struct.strbuf*) #2

declare dso_local i32 @memset(%struct.rpc_state*, i32, i32) #2

declare dso_local i32 @rpc_service(%struct.rpc_state*, %struct.discovery*, i32, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @write_or_die(i32, i32, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
