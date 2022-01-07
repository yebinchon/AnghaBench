; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_salist_cmd_parse.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_salist_cmd_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Nothing after '%c'.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid IP address '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_open_data*, i8*, i32)* @salist_cmd_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salist_cmd_parse(%struct.sa_open_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa_open_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sa_open_data* %0, %struct.sa_open_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 45)
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8*, i8** %10, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %107

51:                                               ; preds = %33
  br label %54

52:                                               ; preds = %30
  store i8 0, i8* %11, align 1
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i8, i8* %11, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %87 [
    i32 47, label %57
    i32 58, label %79
    i32 45, label %79
  ]

57:                                               ; preds = %54
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @is_ipv4_addr(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.sa_open_data*, %struct.sa_open_data** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @ipv4_stohl(i8* %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @ipv4_stohl(i8* %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ipv4_list_add_netmask(%struct.sa_open_data* %62, i32 %64, i32 %66, i32 %67)
  br label %78

69:                                               ; preds = %57
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %72 = load %struct.sa_open_data*, %struct.sa_open_data** %5, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @ipv4_stohl(i8* %73)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ipv4_list_add_net(%struct.sa_open_data* %72, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %61
  br label %106

79:                                               ; preds = %54, %54
  %80 = load %struct.sa_open_data*, %struct.sa_open_data** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @ipv4_stohl(i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @ipv4_stohl(i8* %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ipv4_list_add_range(%struct.sa_open_data* %80, i32 %82, i32 %84, i32 %85)
  br label %106

87:                                               ; preds = %54
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @is_ipv4_addr(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @ipv4_stohl(i8* %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.sa_open_data*, %struct.sa_open_data** %5, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ipv4_list_add_range(%struct.sa_open_data* %94, i32 %95, i32 %96, i32 %97)
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %107

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %79, %78
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %99, %44
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @is_ipv4_addr(i8*) #1

declare dso_local i32 @ipv4_list_add_netmask(%struct.sa_open_data*, i32, i32, i32) #1

declare dso_local i32 @ipv4_stohl(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @ipv4_list_add_net(%struct.sa_open_data*, i32, i32, i32) #1

declare dso_local i32 @ipv4_list_add_range(%struct.sa_open_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
