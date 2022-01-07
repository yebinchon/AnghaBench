; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_fetch_with_fetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_fetch_with_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.transport = type { i32, %struct.helper_data* }
%struct.helper_data = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ref = type { i32, i64, i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fetch %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s also locked %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"connectivity-ok\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s unexpectedly said: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i32, %struct.ref**)* @fetch_with_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_with_fetch(%struct.transport* %0, i32 %1, %struct.ref** %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.helper_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca i8*, align 8
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ref** %2, %struct.ref*** %6, align 8
  %12 = load %struct.transport*, %struct.transport** %4, align 8
  %13 = getelementptr inbounds %struct.transport, %struct.transport* %12, i32 0, i32 1
  %14 = load %struct.helper_data*, %struct.helper_data** %13, align 8
  store %struct.helper_data* %14, %struct.helper_data** %7, align 8
  %15 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load %struct.ref**, %struct.ref*** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ref*, %struct.ref** %21, i64 %23
  %25 = load %struct.ref*, %struct.ref** %24, align 8
  store %struct.ref* %25, %struct.ref** %10, align 8
  %26 = load %struct.ref*, %struct.ref** %10, align 8
  %27 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %52

33:                                               ; preds = %20
  %34 = load %struct.ref*, %struct.ref** %10, align 8
  %35 = getelementptr inbounds %struct.ref, %struct.ref* %34, i32 0, i32 3
  %36 = call i32 @oid_to_hex(i32* %35)
  %37 = load %struct.ref*, %struct.ref** %10, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.ref*, %struct.ref** %10, align 8
  %43 = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.ref*, %struct.ref** %10, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i64 [ %44, %41 ], [ %48, %45 ]
  %51 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %16

55:                                               ; preds = %16
  %56 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 10)
  %57 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %58 = call i32 @sendline(%struct.helper_data* %57, %struct.strbuf* %9)
  br label %59

59:                                               ; preds = %55, %126
  %60 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %61 = call i64 @recvline(%struct.helper_data* %60, %struct.strbuf* %9)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @exit(i32 128) #4
  unreachable

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @starts_with(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  store i8* %73, i8** %11, align 8
  %74 = load %struct.transport*, %struct.transport** %4, align 8
  %75 = getelementptr inbounds %struct.transport, %struct.transport* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %81 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @warning(i32 %79, i32 %82, i8* %83)
  br label %90

85:                                               ; preds = %70
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @xstrdup(i8* %86)
  %88 = load %struct.transport*, %struct.transport** %4, align 8
  %89 = getelementptr inbounds %struct.transport, %struct.transport* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %78
  br label %126

91:                                               ; preds = %65
  %92 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %93 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %98 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %109 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %125

111:                                              ; preds = %102, %96, %91
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %127

116:                                              ; preds = %111
  %117 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %119 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @warning(i32 %117, i32 %120, i8* %122)
  br label %124

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %107
  br label %126

126:                                              ; preds = %125, %90
  br label %59

127:                                              ; preds = %115
  %128 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i64) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @sendline(%struct.helper_data*, %struct.strbuf*) #2

declare dso_local i64 @recvline(%struct.helper_data*, %struct.strbuf*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @warning(i32, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
