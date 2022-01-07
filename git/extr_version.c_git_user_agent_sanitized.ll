; ModuleID = '/home/carl/AnghaBench/git/extr_version.c_git_user_agent_sanitized.c'
source_filename = "/home/carl/AnghaBench/git/extr_version.c_git_user_agent_sanitized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }

@git_user_agent_sanitized.agent = internal global i8* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_user_agent_sanitized() #0 {
  %1 = alloca %struct.strbuf, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @git_user_agent_sanitized.agent, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %0
  %6 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %7 = call i32 (...) @git_user_agent()
  %8 = call i32 @strbuf_addstr(%struct.strbuf* %1, i32 %7)
  %9 = call i32 @strbuf_trim(%struct.strbuf* %1)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %38, %5
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 32
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 127
  br i1 %30, label %31, label %37

31:                                               ; preds = %23, %15
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 46, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %10

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** @git_user_agent_sanitized.agent, align 8
  br label %45

45:                                               ; preds = %41, %0
  %46 = load i8*, i8** @git_user_agent_sanitized.agent, align 8
  ret i8* %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @git_user_agent(...) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
