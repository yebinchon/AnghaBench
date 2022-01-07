; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i64, i64 }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@INSN_NOP = common dso_local global i32 0, align 4
@iter_end = common dso_local global i64 0, align 8
@iter_start = common dso_local global i64 0, align 8
@x86_64 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: Found an access violation\00", align 1
@verbose = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Info: Found an undecodable input\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"%s: %s: decoded and checked %d %s instructions with %d errors (seed:0x%x)\0A\00", align 1
@prog = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@input_file = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"given\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@seed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.insn, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @MAX_INSN_SIZE, align 4
  %13 = mul nsw i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @parse_args(i32 %17, i8** %18)
  %20 = load i32, i32* @MAX_INSN_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  %23 = load i32, i32* @INSN_NOP, align 4
  %24 = load i32, i32* @MAX_INSN_SIZE, align 4
  %25 = call i32 @memset(i8* %22, i32 %23, i32 %24)
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %85, %2
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @iter_end, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %26
  %31 = call i64 @generate_insn(i8* %16)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %88

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @iter_start, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %85

39:                                               ; preds = %34
  %40 = trunc i64 %14 to i32
  %41 = load i32, i32* @x86_64, align 4
  %42 = call i32 @insn_init(%struct.insn* %6, i8* %16, i32 %40, i32 %41)
  %43 = call i32 @insn_get_length(%struct.insn* %6)
  %44 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %45, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @MAX_INSN_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49, %39
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @dump_stream(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %60, i8* %16, %struct.insn* %6)
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %82

64:                                               ; preds = %49
  %65 = load i32, i32* @verbose, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = call i32 @insn_complete(%struct.insn* %6)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @stdout, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @dump_stream(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %72, i8* %16, %struct.insn* %6)
  br label %81

74:                                               ; preds = %67, %64
  %75 = load i32, i32* @verbose, align 4
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @dump_insn(i32 %78, %struct.insn* %6)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %38
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %26

88:                                               ; preds = %33, %26
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @stdout, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load i8*, i8** @prog, align 8
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* @input_file, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @seed, align 4
  %109 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %101, i32 %102, i8* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  store i32 %113, i32* %3, align 4
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_args(i32, i8**) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @generate_insn(i8*) #2

declare dso_local i32 @insn_init(%struct.insn*, i8*, i32, i32) #2

declare dso_local i32 @insn_get_length(%struct.insn*) #2

declare dso_local i32 @dump_stream(i32, i8*, i64, i8*, %struct.insn*) #2

declare dso_local i32 @insn_complete(%struct.insn*) #2

declare dso_local i32 @dump_insn(i32, %struct.insn*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
