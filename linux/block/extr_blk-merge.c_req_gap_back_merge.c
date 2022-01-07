
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int biotail; int q; } ;
struct bio {int dummy; } ;


 int bio_will_gap (int ,struct request*,int ,struct bio*) ;

__attribute__((used)) static inline bool req_gap_back_merge(struct request *req, struct bio *bio)
{
 return bio_will_gap(req->q, req, req->biotail, bio);
}
