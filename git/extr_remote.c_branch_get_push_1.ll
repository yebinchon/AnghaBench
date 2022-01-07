; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_branch_get_push_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_branch_get_push_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i8*, i32 }
%struct.strbuf = type { i32 }
%struct.remote = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"branch '%s' has no remote for pushing\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"push refspecs for '%s' do not include '%s'\00", align 1
@push_default = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"push has no destination (push.default is 'nothing')\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"cannot resolve 'simple' push to a single destination\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unhandled push situation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.branch*, %struct.strbuf*)* @branch_get_push_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @branch_get_push_1(%struct.branch* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.branch*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.remote*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.branch* %0, %struct.branch** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %11 = load %struct.branch*, %struct.branch** %4, align 8
  %12 = call i32 @pushremote_for_branch(%struct.branch* %11, i32* null)
  %13 = call %struct.remote* @remote_get(i32 %12)
  store %struct.remote* %13, %struct.remote** %6, align 8
  %14 = load %struct.remote*, %struct.remote** %6, align 8
  %15 = icmp ne %struct.remote* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.branch*, %struct.branch** %4, align 8
  %20 = getelementptr inbounds %struct.branch, %struct.branch* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %17, i32 %18, i32 %21)
  store i8* %22, i8** %3, align 8
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.remote*, %struct.remote** %6, align 8
  %25 = getelementptr inbounds %struct.remote, %struct.remote* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.remote*, %struct.remote** %6, align 8
  %31 = getelementptr inbounds %struct.remote, %struct.remote* %30, i32 0, i32 2
  %32 = load %struct.branch*, %struct.branch** %4, align 8
  %33 = getelementptr inbounds %struct.branch, %struct.branch* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @apply_refspecs(%struct.TYPE_2__* %31, i8* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %29
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.remote*, %struct.remote** %6, align 8
  %42 = getelementptr inbounds %struct.remote, %struct.remote* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.branch*, %struct.branch** %4, align 8
  %45 = getelementptr inbounds %struct.branch, %struct.branch* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %39, i32 %40, i32 %43, i32 %46)
  store i8* %47, i8** %3, align 8
  br label %115

48:                                               ; preds = %29
  %49 = load %struct.remote*, %struct.remote** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %52 = call i8* @tracking_for_push_dest(%struct.remote* %49, i8* %50, %struct.strbuf* %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %3, align 8
  br label %115

56:                                               ; preds = %23
  %57 = load %struct.remote*, %struct.remote** %6, align 8
  %58 = getelementptr inbounds %struct.remote, %struct.remote* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.remote*, %struct.remote** %6, align 8
  %63 = load %struct.branch*, %struct.branch** %4, align 8
  %64 = getelementptr inbounds %struct.branch, %struct.branch* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %67 = call i8* @tracking_for_push_dest(%struct.remote* %62, i8* %65, %struct.strbuf* %66)
  store i8* %67, i8** %3, align 8
  br label %115

68:                                               ; preds = %56
  %69 = load i32, i32* @push_default, align 4
  switch i32 %69, label %113 [
    i32 131, label %70
    i32 132, label %74
    i32 133, label %74
    i32 128, label %81
    i32 129, label %85
    i32 130, label %85
  ]

70:                                               ; preds = %68
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %71, i32 %72)
  store i8* %73, i8** %3, align 8
  br label %115

74:                                               ; preds = %68, %68
  %75 = load %struct.remote*, %struct.remote** %6, align 8
  %76 = load %struct.branch*, %struct.branch** %4, align 8
  %77 = getelementptr inbounds %struct.branch, %struct.branch* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %80 = call i8* @tracking_for_push_dest(%struct.remote* %75, i8* %78, %struct.strbuf* %79)
  store i8* %80, i8** %3, align 8
  br label %115

81:                                               ; preds = %68
  %82 = load %struct.branch*, %struct.branch** %4, align 8
  %83 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %84 = call i8* @branch_get_upstream(%struct.branch* %82, %struct.strbuf* %83)
  store i8* %84, i8** %3, align 8
  br label %115

85:                                               ; preds = %68, %68
  %86 = load %struct.branch*, %struct.branch** %4, align 8
  %87 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %88 = call i8* @branch_get_upstream(%struct.branch* %86, %struct.strbuf* %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i8* null, i8** %3, align 8
  br label %115

92:                                               ; preds = %85
  %93 = load %struct.remote*, %struct.remote** %6, align 8
  %94 = load %struct.branch*, %struct.branch** %4, align 8
  %95 = getelementptr inbounds %struct.branch, %struct.branch* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %98 = call i8* @tracking_for_push_dest(%struct.remote* %93, i8* %96, %struct.strbuf* %97)
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  store i8* null, i8** %3, align 8
  br label %115

102:                                              ; preds = %92
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @strcmp(i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %109 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %108, i32 %109)
  store i8* %110, i8** %3, align 8
  br label %115

111:                                              ; preds = %102
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %3, align 8
  br label %115

113:                                              ; preds = %68
  %114 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %111, %107, %101, %91, %81, %74, %70, %61, %48, %38, %16
  %116 = load i8*, i8** %3, align 8
  ret i8* %116
}

declare dso_local %struct.remote* @remote_get(i32) #1

declare dso_local i32 @pushremote_for_branch(%struct.branch*, i32*) #1

declare dso_local i8* @error_buf(%struct.strbuf*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apply_refspecs(%struct.TYPE_2__*, i8*) #1

declare dso_local i8* @tracking_for_push_dest(%struct.remote*, i8*, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @branch_get_upstream(%struct.branch*, %struct.strbuf*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
