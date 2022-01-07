; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_section.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_write_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @write_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_section(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %7, align 8
  %13 = call i32 @git_buf_putc(%struct.TYPE_11__* %8, i8 signext 91)
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @git_buf_puts(%struct.TYPE_11__* %8, i8* %17)
  br label %37

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @git_buf_put(%struct.TYPE_11__* %8, i8* %20, i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i8* @escape_value(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @git_buf_printf(%struct.TYPE_11__* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @git__free(i8* %35)
  br label %37

37:                                               ; preds = %19, %16
  %38 = call i32 @git_buf_puts(%struct.TYPE_11__* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i64 @git_buf_oom(%struct.TYPE_11__* %8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i8* @git_buf_cstr(%struct.TYPE_11__* %8)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @git_buf_put(%struct.TYPE_11__* %43, i8* %44, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = call i32 @git_buf_dispose(%struct.TYPE_11__* %8)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %41
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_11__*, i8 signext) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i8* @escape_value(i8*) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_11__*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_11__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
