; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"hivt:u:U:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@skip_timestamps = common dso_local global i32 0, align 4
@cutoff_ago = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%d..%d\00", align 1
@undel_time_min = common dso_local global i64 0, align 8
@undel_time_max = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@t_cutoff = common dso_local global i64 0, align 8
@src_fname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1
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

10:                                               ; preds = %40, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %40 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
    i32 105, label %22
    i32 116, label %23
    i32 85, label %26
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %40

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %175

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %40

22:                                               ; preds = %15
  store i32 1, i32* @skip_timestamps, align 4
  br label %40

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i64 @atoi(i8* %24)
  store i64 %25, i64* @cutoff_ago, align 8
  br label %40

26:                                               ; preds = %15
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* @undel_time_min, i64* @undel_time_max)
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @undel_time_min, align 8
  %32 = load i64, i64* @undel_time_max, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @undel_time_min, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30, %26
  %38 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %175

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %15, %39, %23, %22, %20, %17
  br label %10

41:                                               ; preds = %10
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @optind, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @cutoff_ago, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* @undel_time_min, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @undel_time_max, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56, %45, %41
  %60 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %175

61:                                               ; preds = %56, %53, %50
  %62 = load i64, i64* @undel_time_min, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @undel_time_min, align 8
  br label %70

66:                                               ; preds = %61
  %67 = call i64 @time(i32 0)
  %68 = load i64, i64* @cutoff_ago, align 8
  %69 = sub nsw i64 %67, %68
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i64 [ %65, %64 ], [ %69, %66 ]
  store i64 %71, i64* @t_cutoff, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* @optind, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** @src_fname, align 8
  %77 = load i8*, i8** @username, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load i8*, i8** @username, align 8
  %81 = call i64 @change_user(i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** @username, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i8*, i8** @username, align 8
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %89 ]
  %92 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  store i32 1, i32* %3, align 4
  br label %175

93:                                               ; preds = %79, %70
  %94 = load i8*, i8** @src_fname, align 8
  %95 = load i32, i32* @O_RDONLY, align 4
  %96 = call i8* (i8*, i32, ...) @open(i8* %94, i32 %95)
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* @src_fd, align 8
  %98 = load i64, i64* @src_fd, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** @src_fname, align 8
  %103 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  store i32 1, i32* %3, align 4
  br label %175

104:                                              ; preds = %93
  %105 = load i32, i32* @optind, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %104
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* @optind, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** @targ_fname, align 8
  %116 = load i8*, i8** @targ_fname, align 8
  %117 = load i32, i32* @O_WRONLY, align 4
  %118 = load i32, i32* @O_APPEND, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @O_CREAT, align 4
  %121 = or i32 %119, %120
  %122 = call i8* (i8*, i32, ...) @open(i8* %116, i32 %121, i32 420)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* @targ_fd, align 4
  %124 = load i32, i32* @targ_fd, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %109
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** @targ_fname, align 8
  %129 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  store i32 1, i32* %3, align 4
  br label %175

130:                                              ; preds = %109
  %131 = load i32, i32* @targ_fd, align 4
  %132 = load i32, i32* @SEEK_END, align 4
  %133 = call i64 @lseek(i32 %131, i32 0, i32 %132)
  store i64 %133, i64* @targ_orig_size, align 8
  %134 = load i64, i64* @targ_orig_size, align 8
  %135 = icmp sgt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* @undel_time_min, align 8
  %138 = icmp sgt i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = xor i32 %136, %139
  %141 = call i32 @assert(i32 %140)
  br label %143

142:                                              ; preds = %104
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %143

143:                                              ; preds = %142, %130
  br label %144

144:                                              ; preds = %147, %143
  %145 = call i64 (...) @process_record()
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %144

148:                                              ; preds = %144
  %149 = call i32 (...) @flush_out()
  %150 = load i32, i32* @targ_fd, align 4
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32, i32* @targ_fd, align 4
  %154 = call i64 @fdatasync(i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8*, i8** @targ_fname, align 8
  %159 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %158)
  %160 = call i32 @exit(i32 1) #3
  unreachable

161:                                              ; preds = %152
  %162 = load i32, i32* @targ_fd, align 4
  %163 = call i32 @close(i32 %162)
  br label %164

164:                                              ; preds = %161, %148
  %165 = load i64, i64* @verbosity, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (...) @output_stats()
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i64, i64* @rend, align 8
  %171 = load i64, i64* @rptr, align 8
  %172 = icmp sgt i64 %170, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %169, %126, %100, %90, %59, %37, %18
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

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
