; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_append_signoff.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_append_signoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@APPEND_SIGNOFF_DEDUP = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@sign_off_header = common dso_local global i32 0, align 4
@WANT_COMMITTER_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_signoff(%struct.strbuf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @APPEND_SIGNOFF_DEDUP, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load i32, i32* @sign_off_header, align 4
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %8, i32 %16)
  %18 = load i32, i32* @WANT_COMMITTER_IDENT, align 4
  %19 = call i32 @fmt_name(i32 %18)
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %8, i32 %19)
  %21 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext 10)
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %26 = call i32 @strbuf_complete_line(%struct.strbuf* %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strncmp(i8* %39, i8* %41, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32 3, i32* %9, align 4
  br label %51

47:                                               ; preds = %36, %27
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @has_conforming_footer(%struct.strbuf* %48, %struct.strbuf* %8, i64 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %51
  store i8* null, i8** %10, align 8
  %55 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %80

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %79

67:                                               ; preds = %63
  %68 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, 2
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 10
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %85 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = sub i64 %87, %88
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = call i32 @strbuf_splice(%struct.strbuf* %84, i64 %89, i32 0, i8* %90, i64 %92)
  br label %94

94:                                               ; preds = %83, %80
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 3
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 2
  br i1 %103, label %104, label %116

104:                                              ; preds = %101, %98
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @strbuf_splice(%struct.strbuf* %105, i64 %110, i32 0, i8* %112, i64 %114)
  br label %116

116:                                              ; preds = %104, %101, %95
  %117 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @fmt_name(i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @has_conforming_footer(%struct.strbuf*, %struct.strbuf*, i64) #2

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i64, i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
