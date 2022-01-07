; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_handle_new_lock_ctx.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_handle_new_lock_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*, i32*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.xml_ctx = type { i64, i32, i64 }
%struct.remote_lock = type { i8*, i8*, i32, i8* }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@DAV_ACTIVELOCK_OWNER = common dso_local global i32 0, align 4
@DAV_ACTIVELOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Second-\00", align 1
@DAV_ACTIVELOCK_TOKEN = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_ctx*, i32)* @handle_new_lock_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_new_lock_ctx(%struct.xml_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xml_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.remote_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.xml_ctx* %0, %struct.xml_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.remote_lock*
  store %struct.remote_lock* %13, %struct.remote_lock** %5, align 8
  %14 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %107

20:                                               ; preds = %2
  %21 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %20
  %26 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DAV_ACTIVELOCK_OWNER, align 4
  %30 = call i32 @strcmp(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @xstrdup(i64 %35)
  %37 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %38 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  br label %106

39:                                               ; preds = %25
  %40 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DAV_ACTIVELOCK_TIMEOUT, align 4
  %44 = call i32 @strcmp(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %39
  %47 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @skip_prefix(i64 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strtol(i8* %53, i32* null, i32 10)
  %55 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %56 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %46
  br label %105

58:                                               ; preds = %39
  %59 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DAV_ACTIVELOCK_TOKEN, align 4
  %63 = call i32 @strcmp(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %104, label %65

65:                                               ; preds = %58
  %66 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @xstrdup(i64 %68)
  %70 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %71 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = call i32 %74(i32* %6)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %77, align 8
  %79 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %80 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %83 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = call i32 %78(i32* %6, i8* %81, i32 %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %88, align 8
  %90 = call i32 %89(i8* %17, i32* %6)
  %91 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %92 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 95, i8* %94, align 1
  %95 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %96 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 @hash_to_hex(i8* %17)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i8* %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %65, %58
  br label %105

105:                                              ; preds = %104, %57
  br label %106

106:                                              ; preds = %105, %32
  br label %107

107:                                              ; preds = %106, %20, %2
  %108 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i8* @xstrdup(i64) #2

declare dso_local i64 @skip_prefix(i64, i8*, i8**) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @hash_to_hex(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
