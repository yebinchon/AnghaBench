; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-log-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-log-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"hivt:u:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@skip_timestamps = common dso_local global i32 0, align 4
@cutoff_ago = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@t_cutoff = common dso_local global i64 0, align 8
@src_fname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1
@rend = common dso_local global i64 0, align 8
@rptr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %26 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 105, label %22
    i32 116, label %23
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %26

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %144

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %26

22:                                               ; preds = %15
  store i32 1, i32* @skip_timestamps, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i64 @atoi(i8* %24)
  store i64 %25, i64* @cutoff_ago, align 8
  br label %26

26:                                               ; preds = %15, %23, %22, %20, %17
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @optind, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @optind, align 4
  %33 = add nsw i32 %32, 2
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @cutoff_ago, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %31, %27
  %40 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %144

41:                                               ; preds = %36
  %42 = call i64 @time(i32 0)
  %43 = load i64, i64* @cutoff_ago, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* @t_cutoff, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** @src_fname, align 8
  %50 = load i8*, i8** @username, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load i8*, i8** @username, align 8
  %54 = call i64 @change_user(i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** @username, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i8*, i8** @username, align 8
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %62 ]
  %65 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  store i32 1, i32* %3, align 4
  br label %144

66:                                               ; preds = %52, %41
  %67 = load i8*, i8** @src_fname, align 8
  %68 = load i32, i32* @O_RDONLY, align 4
  %69 = call i8* (i8*, i32, ...) @open(i8* %67, i32 %68)
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* @src_fd, align 8
  %71 = load i64, i64* @src_fd, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @src_fname, align 8
  %76 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  store i32 1, i32* %3, align 4
  br label %144

77:                                               ; preds = %66
  %78 = load i32, i32* @optind, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %77
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* @optind, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @targ_fname, align 8
  %89 = load i8*, i8** @targ_fname, align 8
  %90 = load i32, i32* @O_WRONLY, align 4
  %91 = load i32, i32* @O_APPEND, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @O_CREAT, align 4
  %94 = or i32 %92, %93
  %95 = call i8* (i8*, i32, ...) @open(i8* %89, i32 %94, i32 420)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* @targ_fd, align 4
  %97 = load i32, i32* @targ_fd, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @targ_fname, align 8
  %102 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  store i32 1, i32* %3, align 4
  br label %144

103:                                              ; preds = %82
  %104 = load i32, i32* @targ_fd, align 4
  %105 = load i32, i32* @SEEK_END, align 4
  %106 = call i64 @lseek(i32 %104, i32 0, i32 %105)
  store i64 %106, i64* @targ_orig_size, align 8
  %107 = load i64, i64* @targ_orig_size, align 8
  %108 = icmp sgt i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  br label %112

111:                                              ; preds = %77
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %112

112:                                              ; preds = %111, %103
  br label %113

113:                                              ; preds = %116, %112
  %114 = call i64 (...) @process_record()
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %113

117:                                              ; preds = %113
  %118 = call i32 (...) @flush_out()
  %119 = load i32, i32* @targ_fd, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load i32, i32* @targ_fd, align 4
  %123 = call i64 @fdatasync(i32 %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8*, i8** @targ_fname, align 8
  %128 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %127)
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %121
  %131 = load i32, i32* @targ_fd, align 4
  %132 = call i32 @close(i32 %131)
  br label %133

133:                                              ; preds = %130, %117
  %134 = load i64, i64* @verbosity, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (...) @output_stats()
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i64, i64* @rend, align 8
  %140 = load i64, i64* @rptr, align 8
  %141 = icmp sgt i64 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %99, %73, %63, %39, %18
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @time(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @open(i8*, i32, ...) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @process_record(...) #1

declare dso_local i32 @flush_out(...) #1

declare dso_local i64 @fdatasync(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
