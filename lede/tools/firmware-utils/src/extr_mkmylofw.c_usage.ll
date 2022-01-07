; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_usage.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpx_board = type { i8*, i8* }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION...] <file>\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [314 x i8] c"\0A  <file>          write output to the <file>\0A\0AOptions:\0A  -B <board>      create firmware for the board specified with <board>.\0A                  This option set vendor id, device id, subvendor id,\0A                  subdevice id, and flash size options to the right value.\0A                  valid <board> values:\0A\00", align 1
@boards = common dso_local global %struct.cpx_board* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"                      %-12s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1337 x i8] c"  -i <vid>:<did>[:<svid>[:<sdid>]]\0A                  create firmware for board with vendor id <vid>, device\0A                  id <did>, subvendor id <svid> and subdevice id <sdid>.\0A  -r <rev>        set board revision to <rev>.\0A  -s <size>       set flash size to <size>\0A  -b <addr>:<len>[:[<flags>]:<file>]\0A                  define block at <addr> with length of <len>.\0A                  valid <flag> values:\0A                      h : add crc header before the file data.\0A  -p <addr>:<len>[:<flags>[:<param>[:<name>[:<file>]]]]\0A                  add partition at <addr>, with size of <len> to the\0A                  partition table, set partition name to <name>, partition \0A                  flags to <flags> and partition parameter to <param>.\0A                  If the <file> is specified content of the file will be \0A                  added to the firmware image.\0A                  valid <flag> values:\0A                      a:  this is the active partition. The bootloader loads\0A                          the firmware from this partition.\0A                      h:  the partition data have a header.\0A                      l:  the partition data uses LZMA compression.\0A                      p:  the bootloader loads data from this partition to\0A                          the RAM before decompress it.\0A  -h              show this screen\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cpx_board*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EXIT_SUCCESS, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** @stderr, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @stdout, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** @progname, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.cpx_board*, %struct.cpx_board** @boards, align 8
  store %struct.cpx_board* %19, %struct.cpx_board** %4, align 8
  br label %20

20:                                               ; preds = %34, %12
  %21 = load %struct.cpx_board*, %struct.cpx_board** %4, align 8
  %22 = getelementptr inbounds %struct.cpx_board, %struct.cpx_board* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.cpx_board*, %struct.cpx_board** %4, align 8
  %28 = getelementptr inbounds %struct.cpx_board, %struct.cpx_board* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.cpx_board*, %struct.cpx_board** %4, align 8
  %31 = getelementptr inbounds %struct.cpx_board, %struct.cpx_board* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load %struct.cpx_board*, %struct.cpx_board** %4, align 8
  %36 = getelementptr inbounds %struct.cpx_board, %struct.cpx_board* %35, i32 1
  store %struct.cpx_board* %36, %struct.cpx_board** %4, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([1337 x i8], [1337 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @exit(i32 %40) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
