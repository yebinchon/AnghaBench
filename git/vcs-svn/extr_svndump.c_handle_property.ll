; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_handle_property.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_handle_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"svn:log\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid dump: unsets svn:log\00", align 1
@rev_ctx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"svn:author\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"svn:date\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid dump: unsets svn:date\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid timestamp: %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"svn:executable\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"svn:special\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"invalid dump: sets type twice\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@node_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, i32*)* @handle_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_property(%struct.strbuf* %0, %struct.strbuf* %1, i32* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  switch i64 %16, label %112 [
    i64 8, label %17
    i64 11, label %30
    i64 9, label %44
    i64 15, label %66
    i64 12, label %66
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @constcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %112

22:                                               ; preds = %17
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = icmp ne %struct.strbuf* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %29 = call i32 @strbuf_swap(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 2), %struct.strbuf* %28)
  br label %112

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @constcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %112

35:                                               ; preds = %30
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = icmp ne %struct.strbuf* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @strbuf_reset(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 1))
  br label %43

40:                                               ; preds = %35
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = call i32 @strbuf_swap(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 1), %struct.strbuf* %41)
  br label %43

43:                                               ; preds = %40, %38
  br label %112

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @constcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %112

49:                                               ; preds = %44
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = icmp ne %struct.strbuf* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @parse_date_basic(i8* %57, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 0), i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %54
  br label %112

66:                                               ; preds = %3, %3
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @constcmp(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %112

75:                                               ; preds = %70, %66
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @constcmp(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %112

84:                                               ; preds = %79, %75
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %90 = icmp ne %struct.strbuf* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %112

92:                                               ; preds = %88
  %93 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %96 = icmp ne %struct.strbuf* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @S_IFREG, align 4
  %99 = or i32 %98, 420
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_ctx, i32 0, i32 0), align 4
  br label %112

100:                                              ; preds = %94
  %101 = load i32*, i32** %6, align 8
  store i32 1, i32* %101, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @S_IFREG, align 4
  %107 = or i32 %106, 493
  br label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @S_IFLNK, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i32 [ %107, %105 ], [ %109, %108 ]
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_ctx, i32 0, i32 0), align 4
  br label %112

112:                                              ; preds = %91, %97, %110, %3, %83, %74, %65, %48, %43, %34, %27, %21
  ret void
}

declare dso_local i32 @constcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strbuf_swap(i32*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @parse_date_basic(i8*, i32*, i32*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
