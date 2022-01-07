; ModuleID = '/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_read_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"status=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subprocess_read_status(i32 %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @packet_read_line_gently(i32 %9, i32* null, i8** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %8
  br label %56

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.strbuf** @strbuf_split_str(i8* %18, i8 signext 61, i32 2)
  store %struct.strbuf** %19, %struct.strbuf*** %5, align 8
  %20 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %20, i64 0
  %22 = load %struct.strbuf*, %struct.strbuf** %21, align 8
  %23 = icmp ne %struct.strbuf* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %26 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %25, i64 0
  %27 = load %struct.strbuf*, %struct.strbuf** %26, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %33 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %32, i64 1
  %34 = load %struct.strbuf*, %struct.strbuf** %33, align 8
  %35 = icmp ne %struct.strbuf* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %38 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %37, i64 0
  %39 = load %struct.strbuf*, %struct.strbuf** %38, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %46 = call i32 @strbuf_reset(%struct.strbuf* %45)
  %47 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %48 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %49 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %48, i64 1
  %50 = load %struct.strbuf*, %struct.strbuf** %49, align 8
  %51 = call i32 @strbuf_addbuf(%struct.strbuf* %47, %struct.strbuf* %50)
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %31, %24, %17
  %54 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %55 = call i32 @strbuf_list_free(%struct.strbuf** %54)
  br label %8

56:                                               ; preds = %16
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  ret i32 %63
}

declare dso_local i32 @packet_read_line_gently(i32, i32*, i8**) #1

declare dso_local %struct.strbuf** @strbuf_split_str(i8*, i8 signext, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
