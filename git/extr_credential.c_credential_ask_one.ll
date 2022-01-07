; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_ask_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_ask_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.credential = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s for '%s': \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.credential*, i32)* @credential_ask_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @credential_ask_one(i8* %0, %struct.credential* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.credential*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.credential* %1, %struct.credential** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = load %struct.credential*, %struct.credential** %5, align 8
  %13 = call i32 @credential_describe(%struct.credential* %12, %struct.strbuf* %7)
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %20)
  br label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @git_prompt(i32 %27, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = call i32 @strbuf_release(%struct.strbuf* %7)
  %31 = call i32 @strbuf_release(%struct.strbuf* %8)
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @xstrdup(i8* %32)
  ret i8* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @credential_describe(%struct.credential*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i8* @git_prompt(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @xstrdup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
