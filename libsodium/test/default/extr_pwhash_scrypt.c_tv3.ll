; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_scrypt.c_tv3.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_scrypt.c_tv3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@tv3.tests = internal global [33 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.27, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.29, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.31, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.32, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.33, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.39, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.41, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.42, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [111 x i8] c"^T5H$JYt39n%K*j:W]!1s?vg!:jGi]Ax?..l7[p0v:1jHTpla9;]bUN;?bWyCbtqg nrDFal+Jxl3,2`#^tFSu%v_+7iYse8-cCkNf!tD=KrW)\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"$7$B6....1....75gBMAGwfFWZqBdyF3WdTQnWdUsuTiWjG1fF9c1jiSD$tc8RoB3.Em3/zNgMLWo2u00oGIoTyJv4fl3Fl8Tix72\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"bl72h6#y<':MFRZ>B IA1=NRkCKS%W8`1I.2uQxJN0g)N N aTt^4K!Iw5r H6;crDsv^a55j9tsk'/GqweZn;cdk6+F_St6:#*=?ZCD_lw>.\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"$7$A6....3....Iahc6qM0.UQJHVgE4h9oa1/4OWlWLm9CCtfguvz6bQD$QnXCo3M7nIqtry2WKsUZ5gQ.mY0wAlJu.WUhtE8vF66\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"Py >e.5b+tLo@rL`dC2k@eJ&4eVl!W=JJ4+k&mAt@gt',FS1JjqKW3aq21:]^kna`mde7kVkN5NrpKUptu)@4*b&?BE_sJMG1=&@`3GBCV]Wg7xwgo7x3El\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"$7$96..../....f6bEusKt79kK4wdYN0ki2nw4bJQ7P3rN6k3BSigsK/D$Dsvuw7vXj5xijmrb/NOhdgoyK/OiSIYv88cEtl9Cik7\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"2vj;Um]FKOL27oam(:Uo8+UmSTvb1FD*h?jk_,S=;RDgF-$Fjk?]9yvfxe@fN^!NN(Cuml?+2Raa\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"$7$86....I....7XwIxLtCx4VphmFeUa6OGuGJrFaIaYzDiLNu/tyUPhD$U3q5GCEqCWxMwh.YQHDJrlg7FIZgViv9pcXE3h1vg61\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"CT=[9uUoGav,J`kU+348tA50ue#sL:ABZ3QgF+r[#vh:tTOiL>s8tv%,Jeo]jH/_4^i(*jD-_ku[9Ko[=86 06V\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"$7$A6....2....R3.bjH6YS9wz9z8Jsj.3weGQ3J80ZZElGw2oVux1TP6$i5u6lFzXDHaIgYEICinLD6WNaovbiXP8SnLrDRdKgA9\00", align 1
@.str.10 = private unnamed_addr constant [109 x i8] c"J#wNn`hDgOpTHNI.w^1a70%f,.9V_m038H_JIJQln`vdWnn/rmILR?9H5g(+`;@H(2VosN9Fgk[WEjaBr'yB9Q19-imNa04[Mk5kvGcSn-TV\00", align 1
@.str.11 = private unnamed_addr constant [102 x i8] c"$7$B6....1....Dj1y.4mF1J9XmT/6IDskYdCLaPFJTq9xcCwXQ1DpT92$92/hYfZLRq1nTLyIz.uc/dC6wLqwnsoqpkadrCXusm6\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"j4BS38Asa;p)[K+9TY!3YDj<LK-`nLVXQw9%*QfM\00", align 1
@.str.13 = private unnamed_addr constant [102 x i8] c"$7$B6....1....5Ods8mojVwXJq4AywF/uI9BdMSiJ/zT8hQP/4cB68VC$nk4ExHNXJ802froj51/1wJTrSZvTIyyK7PecOxRRaz0\00", align 1
@.str.14 = private unnamed_addr constant [105 x i8] c"M.R>Qw+!qJb]>pP :_.9`dxM9k [eR7Y!yL-3)sNs[R,j_/^ TH=5ny'15>6UXWcQW^6D%XCsO[vN[%ReA-`tV1vW(Nt*0KVK#]45P_A\00", align 1
@.str.15 = private unnamed_addr constant [102 x i8] c"$7$B6....1....D/eyk8N5y6Z8YVQEsw521cTx.9zzLuK7YDs1KMMh.o4$alfW8ZbsUWnXc.vqon2zoljVk24Tt1.IsCuo2KurvS2\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"K3S=KyH#)36_?]LxeR8QNKw6X=gFb'ai$C%29V* tyh^Wo$TN-#Q4qkmtTCf0LLb.^E$0uykkP\00", align 1
@.str.17 = private unnamed_addr constant [102 x i8] c"$7$B6....1....CuBuU97xgAage8whp/JNKobo0TFbsORGVbfcQIefyP8$aqalP.XofGViB8EPLONqHma8vs1xc9uTIMYh9CgE.S8\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Y0!?iQa9M%5ekffW(`\00", align 1
@.str.19 = private unnamed_addr constant [102 x i8] c"$7$A6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.20 = private unnamed_addr constant [102 x i8] c"$7$A6....1....$TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.21 = private unnamed_addr constant [102 x i8] c"$7$.6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.22 = private unnamed_addr constant [102 x i8] c"$7$A.....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.23 = private unnamed_addr constant [102 x i8] c"$7$A6.........TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"$7$A6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i44269$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AH\00", align 1
@.str.25 = private unnamed_addr constant [106 x i8] c"$7$A6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx54269\00", align 1
@.str.26 = private unnamed_addr constant [102 x i8] c"$7^A6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.27 = private unnamed_addr constant [102 x i8] c"$7$!6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.28 = private unnamed_addr constant [102 x i8] c"$7$A!....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.29 = private unnamed_addr constant [102 x i8] c"$7$A6....!....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [102 x i8] c"$7fA6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4#a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.32 = private unnamed_addr constant [102 x i8] c"$7$AX....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.33 = private unnamed_addr constant [102 x i8] c"$7$A6....1!...TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$a4ik5hGDN7foMuHOW.cp.CtX01UyCeO0.JAG.AHPpx5\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"$7$A6....1\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"$7$\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"$7$A6....1....TrXs5Zk6s8sWHpQgWDIXTR8kUU3s6Jc3s.DtdS8M2i4$\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.38 = private unnamed_addr constant [102 x i8] c"$7$.6..../.....lgPchkGHqbeONR/xtuXyjCrt9kUSg6NlKFQO0OSxo/$.DbajbPYH9T7sg3fOtcgxvJzzfIgJBIxMkeQ8b24YQ.\00", align 1
@.str.39 = private unnamed_addr constant [102 x i8] c"$7$z6..../.....lgPchkGHqbeONR/xtuXyjCrt9kUSg6NlKFQO0OSxo/$.DbajbPYH9T7sg3fOtcgxvJzzfIgJBIxMkeQ8b24YQ.\00", align 1
@.str.40 = private unnamed_addr constant [102 x i8] c"$7$8zzzzzzzzzz.lgPchkGHqbeONR/xtuXyjCrt9kUSg6NlKFQO0OSxo/$.DbajbPYH9T7sg3fOtcgxvJzzfIgJBIxMkeQ8b24YQ.\00", align 1
@.str.41 = private unnamed_addr constant [102 x i8] c"$7$8.....zzzzz.lgPchkGHqbeONR/xtuXyjCrt9kUSg6NlKFQO0OSxo/$.DbajbPYH9T7sg3fOtcgxvJzzfIgJBIxMkeQ8b24YQ.\00", align 1
@.str.42 = private unnamed_addr constant [102 x i8] c"$7$86..../..../lgPchkGHqbeONR/xtuXyjCrt9kUSg6NlKFQO0OSxo/$.DbajbPYH9T7sg3fOtcgxvJzzfIgJBIxMkeQ8b24YQ.\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"pwhash_str failure: [%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv3() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %68, %0
  %5 = load i64, i64* %3, align 8
  %6 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = add i32 %9, 1
  %11 = call i64 @sodium_malloc(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add i32 %26, 1
  %28 = call i32 @memcpy(i8* %17, i8* %21, i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 16
  %33 = call i32 @strlen(i8* %32)
  %34 = add i32 %33, 1
  %35 = call i64 @sodium_malloc(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %2, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 16
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @tv3.tests, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 16
  %50 = call i32 @strlen(i8* %49)
  %51 = add i32 %50, 1
  %52 = call i32 @memcpy(i8* %41, i8* %45, i32 %51)
  %53 = load i8*, i8** %1, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8* %53, i8* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %4
  %60 = load i64, i64* %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %4
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @sodium_free(i8* %64)
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @sodium_free(i8* %66)
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %3, align 8
  %71 = icmp ult i64 %70, 33
  br i1 %71, label %4, label %72

72:                                               ; preds = %68
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
