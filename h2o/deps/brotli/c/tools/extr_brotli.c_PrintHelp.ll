; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_PrintHelp.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_PrintHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.1 = private unnamed_addr constant [275 x i8] c"Options:\0A  -#                          compression level (0-9)\0A  -c, --stdout                write on standard output\0A  -d, --decompress            decompress\0A  -f, --force                 force output file overwrite\0A  -h, --help                  display this help and exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [246 x i8] c"  -j, --rm                    remove source file(s)\0A  -k, --keep                  keep source file(s) (default)\0A  -n, --no-copy-stat          do not copy source file(s) attributes\0A  -o FILE, --output=FILE      output file (only if 1 input file)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"  -q NUM, --quality=NUM       compression level (%d-%d)\0A\00", align 1
@BROTLI_MIN_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_QUALITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [105 x i8] c"  -t, --test                  test compressed file integrity\0A  -v, --verbose               verbose mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"  -w NUM, --lgwin=NUM         set LZ77 window size (0, %d-%d) (default:%d)\0A\00", align 1
@BROTLI_MIN_WINDOW_BITS = common dso_local global i32 0, align 4
@BROTLI_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@DEFAULT_LGWIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [130 x i8] c"                              window size = 2**NUM - 16\0A                              0 lets compressor choose the optimal value\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"  -S SUF, --suffix=SUF        output file suffix (default:'%s')\0A\00", align 1
@DEFAULT_SUFFIX = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [305 x i8] c"  -V, --version               display version and exit\0A  -Z, --best                  use best compression level (11) (default)\0ASimple options could be coalesced, i.e. '-9kf' is equivalent to '-9 -k -f'.\0AWith no FILE, or when FILE is -, read standard input.\0AAll arguments after '--' are treated as files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @PrintHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintHelp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stdout, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %12 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %18 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %19 = load i32, i32* @DEFAULT_LGWIN, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = load i8*, i8** @DEFAULT_SUFFIX, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
