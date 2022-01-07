; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_set_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_set_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @set_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_url(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @ensure_remote_name_is_valid(i8* %25)
  store i32 %26, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %67

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_repository_config__weakptr(i32** %10, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %67

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @git_buf_printf(%struct.TYPE_6__* %11, i8* %37, i8* %38)
  store i32 %39, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @canonicalize_url(%struct.TYPE_6__* %12, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %63

51:                                               ; preds = %46
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @git_config_set_string(i32* %52, i32 %54, i8* %55)
  store i32 %56, i32* %13, align 4
  br label %62

57:                                               ; preds = %43
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @git_config_delete_entry(i32* %58, i32 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %57, %51
  br label %63

63:                                               ; preds = %62, %50
  %64 = call i32 @git_buf_dispose(%struct.TYPE_6__* %12)
  %65 = call i32 @git_buf_dispose(%struct.TYPE_6__* %11)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %41, %34, %28
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i32 @canonicalize_url(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @git_config_set_string(i32*, i32, i8*) #2

declare dso_local i32 @git_config_delete_entry(i32*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
