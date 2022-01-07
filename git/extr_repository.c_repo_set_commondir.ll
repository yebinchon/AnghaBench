; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_set_commondir.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_set_commondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*)* @repo_set_commondir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repo_set_commondir(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @free(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.repository*, %struct.repository** %3, align 8
  %15 = getelementptr inbounds %struct.repository, %struct.repository* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @xstrdup(i8* %16)
  %18 = load %struct.repository*, %struct.repository** %3, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.repository*, %struct.repository** %3, align 8
  %22 = getelementptr inbounds %struct.repository, %struct.repository* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_common_dir_noenv(%struct.strbuf* %5, i32 %23)
  %25 = load %struct.repository*, %struct.repository** %3, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32 @strbuf_detach(%struct.strbuf* %5, i32* null)
  %28 = load %struct.repository*, %struct.repository** %3, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free(i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @get_common_dir_noenv(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
