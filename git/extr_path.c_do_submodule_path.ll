; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_do_submodule_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_do_submodule_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i8*, i32)* @do_submodule_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_submodule_path(%struct.strbuf* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @submodule_to_gitdir(%struct.strbuf* %10, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %41

19:                                               ; preds = %4
  %20 = call i32 @strbuf_complete(%struct.strbuf* %10, i8 signext 47)
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = call i32 @strbuf_addbuf(%struct.strbuf* %21, %struct.strbuf* %10)
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @strbuf_vaddf(%struct.strbuf* %23, i8* %24, i32 %25)
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_common_dir_noenv(%struct.strbuf* %9, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @update_common_dir(%struct.strbuf* %32, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %19
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = call i32 @strbuf_cleanup_path(%struct.strbuf* %39)
  br label %41

41:                                               ; preds = %38, %18
  %42 = call i32 @strbuf_release(%struct.strbuf* %10)
  %43 = call i32 @strbuf_release(%struct.strbuf* %9)
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @submodule_to_gitdir(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @get_common_dir_noenv(%struct.strbuf*, i32) #2

declare dso_local i32 @update_common_dir(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_cleanup_path(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
