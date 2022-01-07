; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_locate_in_PATH.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_locate_in_PATH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @locate_in_PATH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @locate_in_PATH(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  store i8* null, i8** %2, align 8
  br label %53

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %48
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strchrnul(i8* %18, i8 signext 58)
  store i8* %19, i8** %6, align 8
  %20 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @strbuf_add(%struct.strbuf* %5, i8* %25, i32 %31)
  %33 = call i32 @strbuf_addch(%struct.strbuf* %5, i8 signext 47)
  br label %34

34:                                               ; preds = %24, %17
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* %35)
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_executable(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  store i8* %42, i8** %2, align 8
  br label %53

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %4, align 8
  br label %17

51:                                               ; preds = %47
  %52 = call i32 @strbuf_release(%struct.strbuf* %5)
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %51, %41, %15
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @is_executable(i32) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
