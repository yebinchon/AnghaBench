; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_reinterpret.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_reinterpret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.repository = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, i32, %struct.strbuf*, i32)* @reinterpret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinterpret(%struct.repository* %0, i8* %1, i32 %2, i32 %3, %struct.strbuf* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @strbuf_add(%struct.strbuf* %21, i8* %25, i32 %28)
  %30 = load %struct.repository*, %struct.repository** %8, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @repo_interpret_branch_name(%struct.repository* %30, i32 %33, i32 %36, %struct.strbuf* %14, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %6
  %42 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @strbuf_setlen(%struct.strbuf* %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %7, align 4
  br label %57

46:                                               ; preds = %6
  %47 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %48 = call i32 @strbuf_reset(%struct.strbuf* %47)
  %49 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %50 = call i32 @strbuf_addbuf(%struct.strbuf* %49, %struct.strbuf* %14)
  %51 = call i32 @strbuf_release(%struct.strbuf* %14)
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %46, %41
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @repo_interpret_branch_name(%struct.repository*, i32, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
