; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_set_upstreams.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_set_upstreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ref = type { i64, i8*, %struct.TYPE_3__*, i32, %struct.ref* }
%struct.TYPE_3__ = type { i8* }

@REF_STATUS_OK = common dso_local global i64 0, align 8
@REF_STATUS_UPTODATE = common dso_local global i64 0, align 8
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@BRANCH_CONFIG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Would set upstream of '%s' to '%s' of '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transport*, %struct.ref*, i32)* @set_upstreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_upstreams(%struct.transport* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %12, %struct.ref** %7, align 8
  br label %13

13:                                               ; preds = %109, %3
  %14 = load %struct.ref*, %struct.ref** %7, align 8
  %15 = icmp ne %struct.ref* %14, null
  br i1 %15, label %16, label %113

16:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  %17 = load %struct.ref*, %struct.ref** %7, align 8
  %18 = getelementptr inbounds %struct.ref, %struct.ref* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REF_STATUS_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.ref*, %struct.ref** %7, align 8
  %24 = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REF_STATUS_UPTODATE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %109

29:                                               ; preds = %22, %16
  %30 = load %struct.ref*, %struct.ref** %7, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %109

35:                                               ; preds = %29
  %36 = load %struct.ref*, %struct.ref** %7, align 8
  %37 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 3
  %38 = call i64 @is_null_oid(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %109

41:                                               ; preds = %35
  %42 = load %struct.ref*, %struct.ref** %7, align 8
  %43 = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load %struct.ref*, %struct.ref** %7, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @RESOLVE_REF_READING, align 4
  %52 = call i8* @resolve_ref_unsafe(i8* %50, i32 %51, i32* null, i32* %11)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @REF_ISSYMREF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @starts_with(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %64, %60, %55, %41
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @starts_with(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %66
  br label %109

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @starts_with(i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %74
  br label %109

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @BRANCH_CONFIG_VERBOSE, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 11
  %89 = load %struct.transport*, %struct.transport** %4, align 8
  %90 = getelementptr inbounds %struct.transport, %struct.transport* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @install_branch_config(i32 %86, i8* %88, i8* %93, i8* %94)
  br label %108

96:                                               ; preds = %82
  %97 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 11
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 11
  %102 = load %struct.transport*, %struct.transport** %4, align 8
  %103 = getelementptr inbounds %struct.transport, %struct.transport* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @printf(i8* %97, i8* %99, i8* %101, i8* %106)
  br label %108

108:                                              ; preds = %96, %85
  br label %109

109:                                              ; preds = %108, %81, %73, %40, %34, %28
  %110 = load %struct.ref*, %struct.ref** %7, align 8
  %111 = getelementptr inbounds %struct.ref, %struct.ref* %110, i32 0, i32 4
  %112 = load %struct.ref*, %struct.ref** %111, align 8
  store %struct.ref* %112, %struct.ref** %7, align 8
  br label %13

113:                                              ; preds = %13
  ret void
}

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @install_branch_config(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
