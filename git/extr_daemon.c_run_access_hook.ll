; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_run_access_hook.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_run_access_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8**, i32, i32, i32 }
%struct.strbuf = type { i32, i32 }
%struct.daemon_service = type { i32 }
%struct.hostinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@access_hook = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"daemon access hook '%s' failed to start\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to read from pipe to daemon access hook '%s'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to close pipe to daemon access hook '%s'\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"service rejected\00", align 1
@EACCES = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daemon_service*, i8*, i8*, %struct.hostinfo*)* @run_access_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_access_hook(%struct.daemon_service* %0, i8* %1, i8* %2, %struct.hostinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.daemon_service*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hostinfo*, align 8
  %10 = alloca %struct.child_process, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca [8 x i8*], align 16
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.daemon_service* %0, %struct.daemon_service** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.hostinfo* %3, %struct.hostinfo** %9, align 8
  %16 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  store i8** %18, i8*** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @access_hook, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8**, i8*** %13, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %13, align 8
  store i8* %21, i8** %22, align 8
  %24 = load %struct.daemon_service*, %struct.daemon_service** %6, align 8
  %25 = getelementptr inbounds %struct.daemon_service, %struct.daemon_service* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8**, i8*** %13, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %13, align 8
  store i8* %28, i8** %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8**, i8*** %13, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %13, align 8
  store i8* %31, i8** %32, align 8
  %34 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %35 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %13, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %13, align 8
  store i8* %39, i8** %40, align 8
  %42 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %43 = call i32 @get_canon_hostname(%struct.hostinfo* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8**, i8*** %13, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %13, align 8
  store i8* %45, i8** %46, align 8
  %48 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %49 = call i32 @get_ip_address(%struct.hostinfo* %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load i8**, i8*** %13, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %13, align 8
  store i8* %51, i8** %52, align 8
  %54 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %55 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8**, i8*** %13, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %13, align 8
  store i8* %59, i8** %60, align 8
  %62 = load i8**, i8*** %13, align 8
  store i8* null, i8** %62, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %65 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  store i8** %64, i8*** %65, align 8
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 4
  store i32 -1, i32* %68, align 8
  %69 = call i64 @start_command(%struct.child_process* %10)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %4
  %72 = load i32, i32* @access_hook, align 4
  %73 = call i32 @logerror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %101

74:                                               ; preds = %4
  %75 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @strbuf_read(%struct.strbuf* %11, i32 %76, i32 0)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @access_hook, align 4
  %81 = call i32 @logerror(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = call i32 @strbuf_reset(%struct.strbuf* %11)
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @close(i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @access_hook, align 4
  %90 = call i32 @logerror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = call i64 @finish_command(%struct.child_process* %10)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 0, i32* %5, align 4
  br label %123

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %71
  %102 = call i32 @strbuf_ltrim(%struct.strbuf* %11)
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @strchr(i32 %110, i8 signext 10)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i8*, i8** %14, align 8
  store i8 0, i8* %115, align 1
  br label %116

116:                                              ; preds = %114, %108
  %117 = load i32, i32* @EACCES, align 4
  store i32 %117, i32* @errno, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @daemon_error(i8* %118, i32 %120)
  %122 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 -1, i32* %5, align 4
  br label %123

123:                                              ; preds = %116, %98
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_canon_hostname(%struct.hostinfo*) #2

declare dso_local i32 @get_ip_address(%struct.hostinfo*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @logerror(i8*, i32) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_ltrim(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i32 @daemon_error(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
