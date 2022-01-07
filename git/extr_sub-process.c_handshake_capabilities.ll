; ModuleID = '/home/carl/AnghaBench/git/extr_sub-process.c_handshake_capabilities.c'
source_filename = "/home/carl/AnghaBench/git/extr_sub-process.c_handshake_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32*, i32, i32 }
%struct.subprocess_capability = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"capability=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not write requested capability\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not write flush packet\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"capability=\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"subprocess '%s' requested unsupported capability '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, %struct.subprocess_capability*, i32*)* @handshake_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake_capabilities(%struct.child_process* %0, %struct.subprocess_capability* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.child_process*, align 8
  %6 = alloca %struct.subprocess_capability*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.child_process* %0, %struct.child_process** %5, align 8
  store %struct.subprocess_capability* %1, %struct.subprocess_capability** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %12, i64 %14
  %16 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.child_process*, %struct.child_process** %5, align 8
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %23, i64 %25
  %27 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @packet_write_fmt_gently(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.child_process*, %struct.child_process** %5, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @packet_flush_gently(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %114

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %112, %56, %45
  %47 = load %struct.child_process*, %struct.child_process** %5, align 8
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @packet_read_line(i32 %49, i32* null)
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %113

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @skip_prefix(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %46

57:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %59, i64 %61
  %63 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %68, i64 %70
  %72 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @strcmp(i8* %67, i64 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %66, %58
  %77 = phi i1 [ false, %58 ], [ %75, %66 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %58

82:                                               ; preds = %76
  %83 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %83, i64 %85
  %87 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %82
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.subprocess_capability*, %struct.subprocess_capability** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %94, i64 %96
  %98 = getelementptr inbounds %struct.subprocess_capability, %struct.subprocess_capability* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %93, %90
  br label %112

104:                                              ; preds = %82
  %105 = load %struct.child_process*, %struct.child_process** %5, align 8
  %106 = getelementptr inbounds %struct.child_process, %struct.child_process* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %104, %103
  br label %46

113:                                              ; preds = %46
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %43, %31
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @packet_write_fmt_gently(i32, i8*, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @packet_flush_gently(i32) #1

declare dso_local i8* @packet_read_line(i32, i32*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
