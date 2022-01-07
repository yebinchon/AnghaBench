; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_set_helper_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_set_helper_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i32 }
%struct.string_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"deepen-not\00", align 1
@unsupported_options = common dso_local global i8** null, align 8
@boolean_options = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"option %s \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i8*)* @set_helper_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_helper_option(%struct.transport* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.helper_data*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.transport*, %struct.transport** %5, align 8
  %14 = getelementptr inbounds %struct.transport, %struct.transport* %13, i32 0, i32 0
  %15 = load %struct.helper_data*, %struct.helper_data** %14, align 8
  store %struct.helper_data* %15, %struct.helper_data** %8, align 8
  %16 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %12, align 4
  %17 = load %struct.transport*, %struct.transport** %5, align 8
  %18 = call i32 @get_helper(%struct.transport* %17)
  %19 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %20 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %94

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.string_list*
  %33 = call i32 @string_list_set_helper_option(%struct.helper_data* %29, i8* %30, %struct.string_list* %32)
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i8**, i8*** @unsupported_options, align 8
  %38 = call i32 @ARRAY_SIZE(i8** %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8**, i8*** @unsupported_options, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %41, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %94

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %35

54:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i8**, i8*** @boolean_options, align 8
  %58 = call i32 @ARRAY_SIZE(i8** %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8**, i8*** @boolean_options, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %61, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %74

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %55

74:                                               ; preds = %69, %55
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %84 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %83)
  br label %88

85:                                               ; preds = %74
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @quote_c_style(i8* %86, %struct.strbuf* %9, i32* null, i32 0)
  br label %88

88:                                               ; preds = %85, %79
  %89 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 10)
  %90 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %91 = call i32 @strbuf_set_helper_option(%struct.helper_data* %90, %struct.strbuf* %9)
  store i32 %91, i32* %11, align 4
  %92 = call i32 @strbuf_release(%struct.strbuf* %9)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %49, %28, %23
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_helper(%struct.transport*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @string_list_set_helper_option(%struct.helper_data*, i8*, %struct.string_list*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_set_helper_option(%struct.helper_data*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
