; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_parse_host_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_parse_host_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostinfo = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"host=\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Extended attribute \22host\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hostinfo*, i8*, i32)* @parse_host_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_host_arg(%struct.hostinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hostinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.hostinfo* %0, %struct.hostinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = load %struct.hostinfo*, %struct.hostinfo** %4, align 8
  %26 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i32 5)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @loginfo(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @parse_host_and_port(i8* %42, i8** %10, i8** %11)
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.hostinfo*, %struct.hostinfo** %4, align 8
  %48 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %47, i32 0, i32 3
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @sanitize_client(i32* %48, i8* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.hostinfo*, %struct.hostinfo** %4, align 8
  %53 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %52, i32 0, i32 2
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @canonicalize_client(i32* %53, i8* %54)
  %56 = load %struct.hostinfo*, %struct.hostinfo** %4, align 8
  %57 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %30
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %58, %24
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67, %63
  br label %75

75:                                               ; preds = %74, %19, %3
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @loginfo(i8*, i8*) #1

declare dso_local i32 @parse_host_and_port(i8*, i8**, i8**) #1

declare dso_local i32 @sanitize_client(i32*, i8*) #1

declare dso_local i32 @canonicalize_client(i32*, i8*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
