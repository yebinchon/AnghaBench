; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_run_pre_push_hook.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_run_pre_push_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i8* }
%struct.transport = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.ref = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.ref* }
%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"pre-push\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@REF_STATUS_REJECT_NONFASTFORWARD = common dso_local global i64 0, align 8
@REF_STATUS_REJECT_STALE = common dso_local global i64 0, align 8
@REF_STATUS_UPTODATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %s %s %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.ref*)* @run_pre_push_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_pre_push_hook(%struct.transport* %0, %struct.ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.transport*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.child_process, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca [4 x i8*], align 16
  store %struct.transport* %0, %struct.transport** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %13 = call i8* @find_hook(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8* %13, i8** %14, align 16
  %15 = icmp ne i8* %13, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.transport*, %struct.transport** %4, align 8
  %19 = getelementptr inbounds %struct.transport, %struct.transport* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.transport*, %struct.transport** %4, align 8
  %25 = getelementptr inbounds %struct.transport, %struct.transport* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  store i8* %26, i8** %27, align 16
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  store i8* null, i8** %28, align 8
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i8** %29, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i32 -1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = call i64 @start_command(%struct.child_process* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = call i32 @finish_command(%struct.child_process* %9)
  store i32 -1, i32* %3, align 4
  br label %128

37:                                               ; preds = %17
  %38 = load i32, i32* @SIGPIPE, align 4
  %39 = load i32, i32* @SIG_IGN, align 4
  %40 = call i32 @sigchain_push(i32 %38, i32 %39)
  %41 = call i32 @strbuf_init(%struct.strbuf* %10, i32 256)
  %42 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %42, %struct.ref** %8, align 8
  br label %43

43:                                               ; preds = %105, %37
  %44 = load %struct.ref*, %struct.ref** %8, align 8
  %45 = icmp ne %struct.ref* %44, null
  br i1 %45, label %46, label %109

46:                                               ; preds = %43
  %47 = load %struct.ref*, %struct.ref** %8, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %105

52:                                               ; preds = %46
  %53 = load %struct.ref*, %struct.ref** %8, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REF_STATUS_REJECT_NONFASTFORWARD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %105

59:                                               ; preds = %52
  %60 = load %struct.ref*, %struct.ref** %8, align 8
  %61 = getelementptr inbounds %struct.ref, %struct.ref* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REF_STATUS_REJECT_STALE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %105

66:                                               ; preds = %59
  %67 = load %struct.ref*, %struct.ref** %8, align 8
  %68 = getelementptr inbounds %struct.ref, %struct.ref* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REF_STATUS_UPTODATE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %105

73:                                               ; preds = %66
  %74 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %75 = load %struct.ref*, %struct.ref** %8, align 8
  %76 = getelementptr inbounds %struct.ref, %struct.ref* %75, i32 0, i32 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ref*, %struct.ref** %8, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 3
  %82 = call i32 @oid_to_hex(i32* %81)
  %83 = load %struct.ref*, %struct.ref** %8, align 8
  %84 = getelementptr inbounds %struct.ref, %struct.ref* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ref*, %struct.ref** %8, align 8
  %87 = getelementptr inbounds %struct.ref, %struct.ref* %86, i32 0, i32 1
  %88 = call i32 @oid_to_hex(i32* %87)
  %89 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @write_in_full(i32 %91, i32 %93, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %73
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EPIPE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %98
  br label %109

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104, %72, %65, %58, %51
  %106 = load %struct.ref*, %struct.ref** %8, align 8
  %107 = getelementptr inbounds %struct.ref, %struct.ref* %106, i32 0, i32 5
  %108 = load %struct.ref*, %struct.ref** %107, align 8
  store %struct.ref* %108, %struct.ref** %8, align 8
  br label %43

109:                                              ; preds = %103, %43
  %110 = call i32 @strbuf_release(%struct.strbuf* %10)
  %111 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @close(i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* @SIGPIPE, align 4
  %120 = call i32 @sigchain_pop(i32 %119)
  %121 = call i32 @finish_command(%struct.child_process* %9)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %118
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %35, %16
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sigchain_pop(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
