; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_expand_user_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_expand_user_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.passwd = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_user_path(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %69

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 126
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strchrnul(i8* %25, i8 signext 47)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %24
  %37 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strbuf_add_real_path(%struct.strbuf* %6, i8* %45)
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %63

51:                                               ; preds = %24
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call %struct.passwd* @getpw_str(i8* %52, i64 %53)
  store %struct.passwd* %54, %struct.passwd** %12, align 8
  %55 = load %struct.passwd*, %struct.passwd** %12, align 8
  %56 = icmp ne %struct.passwd* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.passwd*, %struct.passwd** %12, align 8
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %61)
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %63, %18
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %66)
  %68 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %68, i8** %3, align 8
  br label %71

69:                                               ; preds = %57, %40, %17
  %70 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i8* null, i8** %3, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @strbuf_add_real_path(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local %struct.passwd* @getpw_str(i8*, i64) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
